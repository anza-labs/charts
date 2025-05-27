# pocket-id

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat) ![Type: application](https://img.shields.io/badge/Type-application-informational?style=flat) ![AppVersion: v0.51.1](https://img.shields.io/badge/AppVersion-v0.51.1-informational?style=flat)

pocket-id is a simple and easy-to-use OIDC provider that allows users to authenticate
with their passkeys to your services.

**Homepage:** <https://pocket-id.org>

## Maintainers

| Name | Email | Url |
| ---- | ------ | --- |
| shanduur | <maturb@proton.me> | <http://linkedin.com/in/urbanekmateusz> |

## Source Code

* <https://github.com/pocket-id/pocket-id>

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| affinity | object | `{}` | Affinity settings for the pods. |
| backup.busyTimeout | string | `"1s"` | Busy timeout, if empty, default is used. |
| backup.checkpointInterval | string | `"1m"` | Interval between checkpoints in Go duration format. If empty, default is used. |
| backup.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| backup.image.repository | string | `"docker.io/litestream/litestream"` | Registry and repository for the litestream image. |
| backup.image.tag | string | `"0.3.13"` | Tag for the image. |
| backup.logging.level | string | `"INFO"` | Logging level. Options: DEBUG, INFO, WARNING, ERROR |
| backup.logging.stderr | bool | `false` | Whether to log to stderr (default is stdout) |
| backup.logging.type | string | `"text"` | Logging format. Options: text or json |
| backup.maxCheckpointPageCount | int | `10000` | Maximum number of pages processed during a checkpoint. |
| backup.minCheckpointPageCount | int | `1000` | Minimum number of pages to trigger a checkpoint. |
| backup.monitorInterval | string | `"1s"` | Interval for monitoring in Go duration format (e.g. "30s"). If empty, default is used. |
| backup.resources | object | `{}` |  |
| backup.secret.accessKey | string | `""` | Primary S3 access key. |
| backup.secret.create | bool | `true` | Specifies whether a secret should be created. |
| backup.secret.name | string | `""` | Specifies name of a secret used to configure the pocket-id. If not filled, uses full name. |
| backup.secret.replicas | list | `[]` |  |
| backup.secret.secretKey | string | `""` | Primary S3 secret key. |
| backup.securityContext | object | `{}` |  |
| config.create | bool | `true` | Specifies whether a config map should be created. |
| config.name | string | `""` | Specifies name of a config map used to configure the pocket-id. If not filled, uses full name. |
| config.ui.settings.app.allowOwnAccountEdit | bool | `true` | Whether users can edit their own account details |
| config.ui.settings.app.appName | string | `"Pocket ID"` | The name of the application to be displayed in the UI |
| config.ui.settings.app.disableAnimations | bool | `false` | Whether to disable animations in the Admin UI |
| config.ui.settings.app.emailsVerified | bool | `false` | Whether the user's email is pre-marked as verified for OIDC clients (typically used for testing) |
| config.ui.settings.app.sessionDuration | int | `60` | Duration in minutes of a session before the user must sign in again |
| config.ui.settings.email.loginNotificationEnabled | bool | `false` | Whether to send an email notification when a user logs in from a new device |
| config.ui.settings.email.oneTimeAccessAsAdminEnabled | bool | `false` | Whether to allow admins to send one-time access sign-in links to the user's email |
| config.ui.settings.email.oneTimeAccessAsUnauthenticatedEnabled | bool | `false` | Whether to allow unauthenticated users to request one-time access sign-in links sent to the user's email    (note: this reduces security significantly, as anyone with email access can sign in) |
| config.ui.settings.ldap.attributes.group.adminGroup | string | `""` | LDAP attribute for the admin group (used to assign Admin privileges) |
| config.ui.settings.ldap.attributes.group.member | string | `"member"` | LDAP attribute for querying group members |
| config.ui.settings.ldap.attributes.group.name | string | `""` | LDAP attribute for the group's name |
| config.ui.settings.ldap.attributes.group.uniqueIdentifier | string | `""` | LDAP attribute for the unique identifier of the group |
| config.ui.settings.ldap.attributes.user.email | string | `""` | LDAP attribute for the email address of the user |
| config.ui.settings.ldap.attributes.user.firstName | string | `""` | LDAP attribute for the user's first name |
| config.ui.settings.ldap.attributes.user.lastName | string | `""` | LDAP attribute for the user's last name |
| config.ui.settings.ldap.attributes.user.profilePicture | string | `""` | LDAP attribute for the user's profile picture |
| config.ui.settings.ldap.attributes.user.uniqueIdentifier | string | `""` | LDAP attribute for the unique identifier of the user |
| config.ui.settings.ldap.attributes.user.username | string | `""` | LDAP attribute for the username of the user |
| config.ui.settings.ldap.base | string | `""` | LDAP search base DN for queries |
| config.ui.settings.ldap.bindDN | string | `""` | LDAP bind distinguished name (DN) |
| config.ui.settings.ldap.bindPassword | string | `""` | LDAP bind password for authentication |
| config.ui.settings.ldap.enabled | bool | `false` | Whether to enable LDAP authentication |
| config.ui.settings.ldap.skipCertVerify | bool | `false` | Whether to skip LDAP certificate verification (useful for self-signed certificates) |
| config.ui.settings.ldap.url | string | `""` | URL of the LDAP server |
| config.ui.settings.ldap.userGroupSearchFilter | string | `"(objectClass=groupOfNames)"` | LDAP group search filter (default is typically fine for most setups) |
| config.ui.settings.ldap.userSearchFilter | string | `"(objectClass=person)"` | LDAP user search filter (default is typically fine for most setups) |
| config.ui.settings.smtp.from | string | `""` | Sender email address for outgoing emails |
| config.ui.settings.smtp.host | string | `""` | SMTP server hostname used to send outgoing emails |
| config.ui.settings.smtp.password | string | `""` | SMTP password for authentication |
| config.ui.settings.smtp.port | string | `""` | SMTP server port |
| config.ui.settings.smtp.skipCertVerify | bool | `false` | Whether to skip SMTP certificate verification (useful for self-signed certificates) |
| config.ui.settings.smtp.tls | string | `"none"` | TLS option to use for SMTP. Options are 'none', 'starttls', or 'tls' |
| config.ui.settings.smtp.user | string | `""` | SMTP username for authentication |
| config.ui.useDefaults | bool | `true` | Whether to enable default settings for the UI or allow customizations |
| database.connectionString | string | `"file:data/pocket-id.db?_pragma=journal_mode(WAL)&_pragma=busy_timeout(2500)&_txlock=immediate"` | Connection string for the database.    - For sqlite: file:data/pocket-id.db?_pragma=journal_mode(WAL)&_pragma=busy_timeout(2500)&_txlock=immediate    - For postgres: postgres://user:password@host:port/dbname |
| database.provider | string | `"sqlite"` | Database provider to use. Options: "sqlite" or "postgres". |
| fullnameOverride | string | `""` | Override for the full name. |
| geoliteDatabaseURL | string | `"https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=%s&suffix=tar.gz"` | URL template to download the MaxMind GeoLite2-City database. `%s` will be replaced with the license key. |
| imagePullSecrets | list | `[]` | Secrets for pulling images. |
| ingress.annotations | object | `{}` | Annotations to add to the ingress. |
| ingress.className | string | `""` | Ingress class name. |
| ingress.enabled | bool | `false` | Specifies whether ingress should be enabled. |
| ingress.host | string | `"pocket-id.example.local"` | Ingress host configuration. |
| ingress.paths[0].path | string | `"/"` |  |
| ingress.paths[0].pathType | string | `"ImplementationSpecific"` |  |
| ingress.tls | list | `[]` | List of TLS configurations for the ingress. |
| maxmindLicenseKey | string | `""` | MaxMind license key used to download the GeoLite2 database. Leave blank to disable download. |
| nameOverride | string | `""` | Override for the name. |
| nodeSelector | object | `{}` | Node selector for the pods. |
| persistence.data.accessMode | string | `"ReadWriteOnce"` | Access mode for the PVC. |
| persistence.data.annotations | object | `{}` | Annotations applied to PVC. |
| persistence.data.enabled | bool | `false` | Enable/disable PVC creation for data. |
| persistence.data.existingClaim | string | `""` | Use an existing PVC if defined, otherwise create one. |
| persistence.data.size | string | `"10Gi"` | Storage size for the PVC. |
| persistence.data.storageClass | string | `""` | Specify the StorageClass (if required). |
| pocketID.image.pullPolicy | string | `"IfNotPresent"` | Image pull policy. |
| pocketID.image.repository | string | `"ghcr.io/pocket-id/pocket-id"` | Registry and repository for the pocket-id image. |
| pocketID.image.tag | string | `"v1.0.0"` | Tag for the image. |
| pocketID.resources | object | `{}` |  |
| pocketID.securityContext | object | `{}` |  |
| podAnnotations | object | `{}` | Annotations to be added to the pods. |
| podLabels | object | `{}` | Labels to be added to the pods. |
| podSecurityContext | object | `{}` |  |
| replicaCount | int | `1` | Number of replicas for the stateful set. |
| secret.create | bool | `true` | Specifies whether a secret should be created. |
| secret.name | string | `""` | Specifies name of a secret used to configure the pocket-id. If not filled, uses full name. |
| service.port | int | `80` | Service port. |
| service.type | string | `"ClusterIP"` | Service type. |
| serviceAccount.annotations | object | `{}` | Annotations to add to the service account. |
| serviceAccount.automount | bool | `true` | Automatically mount a ServiceAccount's API credentials. |
| serviceAccount.create | bool | `true` | Specifies whether a service account should be created. |
| serviceAccount.name | string | `""` | The name of the service account to use. If not set and create is true, a name is generated using the fullname template. |
| timeZone | string | `"Etc/UTC"` | Specifies the time zone to be used by the application. Use a valid IANA time zone string (e.g., "Etc/UTC", "America/New_York"). |
| tolerations | list | `[]` | Tolerations for the pods. |
| updateStrategy.rollingUpdate.maxUnavailable | string | `"100%"` |  |
| updateStrategy.rollingUpdate.partition | int | `0` |  |
| updateStrategy.type | string | `"RollingUpdate"` | The deployment strategy to use to replace existing pods with new ones. Options: "RollingUpdate" or "OnDelete". |

