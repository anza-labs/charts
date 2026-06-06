#!/bin/sh
set -e

USER_NAME="${DEV_USER:-devpod}"
HOME_DIR="/home/${USER_NAME}"
SSH_AUTH_KEYS="${SSH_AUTHORIZED_KEYS_FILE:-/etc/ssh-keys/authorized_keys}"

mkdir -p /tmp 2>/dev/null || true
chmod 1777 /tmp 2>/dev/null || true

# Nixery images may lack standard passwd/group databases
if [ ! -f /etc/passwd ]; then
    echo "root:x:0:0:root:/root:/bin/sh" >/etc/passwd
fi
if [ ! -f /etc/group ]; then
    echo "root:x:0:" >/etc/group
fi

if ! id "${USER_NAME}" >/dev/null 2>&1; then
    if [ -n "${CORE_SHELL}" ]; then
        echo "${USER_NAME}:x:1000:1000:${USER_NAME}:${HOME_DIR}:${CORE_SHELL}" >>/etc/passwd
        echo "${USER_NAME}:x:1000:" >>/etc/group
        mkdir -p "${HOME_DIR}"
    elif command -v adduser >/dev/null 2>&1; then
        adduser -D -h "${HOME_DIR}" "${USER_NAME}"
    else
        echo "${USER_NAME}:x:1000:1000:${USER_NAME}:${HOME_DIR}:/bin/sh" >>/etc/passwd
        echo "${USER_NAME}:x:1000:" >>/etc/group
        mkdir -p "${HOME_DIR}"
    fi
    chown -R "${USER_NAME}:${USER_NAME}" "${HOME_DIR}" 2>/dev/null || true
fi

mkdir -p "${HOME_DIR}/.ssh"
chmod 755 "${HOME_DIR}" 2>/dev/null || true
chmod 700 "${HOME_DIR}/.ssh" 2>/dev/null || true
if [ -f "${SSH_AUTH_KEYS}" ]; then
    cp "${SSH_AUTH_KEYS}" "${HOME_DIR}/.ssh/authorized_keys"
    chmod 600 "${HOME_DIR}/.ssh/authorized_keys"
fi
chown -R "${USER_NAME}:${USER_NAME}" "${HOME_DIR}" 2>/dev/null || true

# Ensure .gnupg exists for GPG agent socket forwarding
mkdir -p "${HOME_DIR}/.gnupg"
chmod 700 "${HOME_DIR}/.gnupg"
chown -R "${USER_NAME}:${USER_NAME}" "${HOME_DIR}/.gnupg" 2>/dev/null || true
echo "use-agent" >"${HOME_DIR}/.gnupg/gpg.conf"

if [ -d /etc/dotfiles ] && [ -n "$(ls -A /etc/dotfiles)" ]; then
    for d in /etc/dotfiles/{*,.[!.]*/}; do
        [ -d "$d" ] || continue
        name=$(basename "$d")
        cp -R "$d" "${HOME_DIR}/${name}" || true
    done
    chown -R "${USER_NAME}:${USER_NAME}" "${HOME_DIR}" 2>/dev/null || true
    if [ -n "${DOTFILES_HOOK_COMMAND}" ]; then
        (cd "${HOME_DIR}" && eval "${DOTFILES_HOOK_COMMAND}") || true
    fi
fi

if ! command -v sshd >/dev/null 2>&1; then
    echo "WARNING: sshd not found"
    exit 1
fi

if ! id sshd >/dev/null 2>&1; then
    echo "sshd:x:101:65534:sshd:/var/empty:/bin/false" >>/etc/passwd
    echo "sshd:x:101:" >>/etc/group
    mkdir -p /var/empty
fi

# Add user to docker group for DinD socket access
if ! grep -q "^docker:" /etc/group 2>/dev/null; then
    echo "docker:x:0:${USER_NAME}" >>/etc/group
else
    if ! grep "^docker:" /etc/group | grep -q "\b${USER_NAME}\b"; then
        sed -i "s/^docker:\([^:]*:[^:]*:\)$/\1${USER_NAME}/" /etc/group
        sed -i "s/^docker:\([^:]*:[^:]*:[^:]*\)$/\1,${USER_NAME}/" /etc/group
    fi
fi

HOST_KEY_DIR="${HOME_DIR}/.ssh-host-keys"
if [ ! -f /etc/ssh/ssh_host_ed25519_key ]; then
    mkdir -p "${HOST_KEY_DIR}"
    if [ -f "${HOST_KEY_DIR}/ssh_host_ed25519_key" ]; then
        cp -f "${HOST_KEY_DIR}"/ssh_host_* /etc/ssh/ 2>/dev/null || true
    else
        ssh-keygen -A 2>/dev/null
        cp -f /etc/ssh/ssh_host_* "${HOST_KEY_DIR}/" 2>/dev/null || true
    fi
fi

# Make Docker socket world-accessible for non-root users
if [ -d /var/run ]; then
    (
        while [ ! -S /var/run/docker.sock ]; do sleep 1; done
        chmod 666 /var/run/docker.sock 2>/dev/null || true
    ) &
fi

exec "$(command -v sshd)" -D
