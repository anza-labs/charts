#!/usr/bin/env python3
import re
import sys
import os
import argparse
from collections import defaultdict
from typing import Dict, List, Optional, Tuple, Any

from ruamel.yaml import YAML
from ruamel.yaml.scalarstring import LiteralScalarString


def parse_release_please_changelog(
    changelog_path: str = "CHANGELOG.md",
) -> Tuple[Optional[str], Optional[str], Dict[str, List[str]]]:
    """
    Parses a Release Please generated CHANGELOG.md file to extract the
    latest version's changes, handling the specific format.

    Args:
        changelog_path: The path to the CHANGELOG.md file.

    Returns:
        A tuple containing:
        - The latest version string (e.g., "1.0.0") or None if not found.
        - The release date string (e.g., "2025-05-21") or None if not found.
        - A dictionary where keys are change categories (e.g., "Features", "Bug Fixes")
          and values are lists of raw change descriptions.
    """
    if not os.path.exists(changelog_path):
        # Changed: Instead of printing error and returning empty, return None to signal "do nothing"
        return None, None, {}

    with open(changelog_path, "r") as f:
        content = f.read()

    # Regex to find the latest version block, now matching '## 1.0.0 (YYYY-MM-DD)'
    # It captures the version, date, and content until the next version or end of file.
    version_block_match = re.search(
        r"## \[(\d+\.\d+\.\d+)\]\([^)]+\) \((\d{4}-\d{2}-\d{2})\)\n\n(.*?)(?=\n## |\Z)",
        content,
        re.DOTALL,
    )

    if not version_block_match:
        print(
            "Warning: Could not find a valid version block in the changelog. "
            "Make sure the format is '## X.Y.Z (YYYY-MM-DD)'."
        )
        return None, None, {}

    latest_version = version_block_match.group(1)
    release_date = version_block_match.group(2)
    version_content = version_block_match.group(3).strip()

    changes_by_category: Dict[str, List[str]] = defaultdict(list)
    current_category: Optional[str] = None

    # Split the version content into lines and process
    for line in version_content.split("\n"):
        line = line.strip()
        if not line:
            continue

        # Check for category headers (e.g., '### Features', '### ⚠ BREAKING CHANGES')
        category_match = re.match(r"### (.*)", line)
        if category_match:
            current_category = category_match.group(1).strip()
            continue

        # If we have a category and the line is a list item
        if current_category and line.startswith(("- ", "* ")):
            # Extract description and potential commit hash link
            description_with_link = line[2:].strip()  # Remove '- ' or '* '
            changes_by_category[current_category].append(description_with_link)

    return latest_version, release_date, changes_by_category


def map_release_please_to_artifacthub_kind(category: str) -> str:
    """
    Maps Release Please changelog categories to Artifact Hub 'kind' values.
    Handles '⚠ BREAKING CHANGES' specifically.

    Args:
        category: The changelog category string (e.g., "Features", "Bug Fixes", "⚠ BREAKING CHANGES").

    Returns:
        The corresponding Artifact Hub 'kind' string (e.g., "added", "fixed", "changed", "security").
    """
    category_lower = category.lower()
    if (
        "feat" in category_lower
        or "feature" in category_lower
        or "added" in category_lower
    ):
        return "added"
    elif "fix" in category_lower or "bug fix" in category_lower:
        return "fixed"
    elif "break" in category_lower:  # Specifically for "⚠ BREAKING CHANGES"
        return "changed"
    elif (
        "change" in category_lower
        or "chore" in category_lower
        or "refactor" in category_lower
        or "perf" in category_lower
    ):
        return "changed"
    elif "security" in category_lower:
        return "security"
    else:
        return "changed"


def convert_to_artifacthub_changes(
    changes_by_category: Dict[str, List[str]],
) -> List[Dict[str, Any]]:
    """
    Converts parsed changes into Artifact Hub's structured changes format,
    extracting ALL markdown links from the description into the 'links' field,
    and removing any remaining empty parentheses.
    Ignores entries under '⚠ BREAKING CHANGES'.

    Args:
        changes_by_category: A dictionary of changes grouped by category.

    Returns:
        A list of dictionaries, each representing an Artifact Hub change entry.
    """
    artifacthub_changes: List[Dict[str, Any]] = []
    # Regex to find any markdown link: [text](url)
    markdown_link_pattern = re.compile(r"\[([^\]]+?)\]\((https?://[^\s)]+)\)")
    # Regex to find any remaining empty parentheses after link removal
    empty_parentheses_pattern = re.compile(r"\s*\(\s*\)\s*")

    for category, changes in changes_by_category.items():
        # Skip BREAKING CHANGES category
        if "BREAKING CHANGES" in category.upper():
            print(f"Skipping changes under category: '{category}'")
            continue

        kind = map_release_please_to_artifacthub_kind(category)
        for change_description_raw in changes:
            extracted_links: List[Dict[str, str]] = []

            # Find all markdown links in the raw description
            for match in markdown_link_pattern.finditer(change_description_raw):
                link_text = match.group(1)
                link_url = match.group(2)

                link_name = ""
                if re.match(r"^#\d+$", link_text):
                    link_name = f"GitHub Issue {link_text}"
                elif re.match(r"^[a-f0-9]{7,}$", link_text):
                    link_name = f"Commit {link_text[:7]}"
                else:
                    link_name = link_text

                extracted_links.append({"name": link_name.strip(), "url": link_url})

            # Clean the description:
            description_clean = markdown_link_pattern.sub(
                "", change_description_raw
            ).strip()
            description_clean = empty_parentheses_pattern.sub(
                "", description_clean
            ).strip()
            description_clean = re.sub(r",\s*$", "", description_clean).strip()

            if (
                kind == "changed"
                and "BREAKING CHANGES" in category.upper()
                and not description_clean.upper().startswith("BREAKING CHANGE:")
            ):
                description_clean = "BREAKING CHANGE: " + description_clean

            artifacthub_changes.append(
                {
                    "kind": kind,
                    "description": description_clean,
                    "links": (extracted_links if extracted_links else None),
                }
            )
    return artifacthub_changes


def generate_artifacthub_annotation_string(
    artifacthub_changes_data: List[Dict[str, Any]],
) -> str:
    """
    Generates the YAML string for the artifacthub.io/changes annotation with 2-space array indentation.

    Args:
        artifacthub_changes_data: A list of dictionaries representing Artifact Hub change entries.

    Returns:
        A YAML formatted string suitable for the artifacthub.io/changes annotation.
    """
    yaml_dumper = YAML()
    yaml_dumper.width = 1000

    import io

    string_stream = io.StringIO()
    yaml_dumper.dump(artifacthub_changes_data, string_stream)
    return string_stream.getvalue().strip()


def update_chart_yaml(
    chart_yaml_path: str, version: str, artifacthub_changes_yaml_string: str
) -> None:
    """
    Updates the Chart.yaml file with the new version and Artifact Hub changes.

    Args:
        chart_yaml_path: The path to the Chart.yaml file.
        version: The new version string to set in Chart.yaml.
        artifacthub_changes_yaml_string: The YAML formatted string for the
                                         artifacthub.io/changes annotation.
    """
    yaml_loader = YAML()
    yaml_loader.preserve_quotes = True
    yaml_loader.indent(mapping=2, sequence=4, offset=2)

    if not os.path.exists(chart_yaml_path):
        print(
            f"Error: Chart.yaml file '{chart_yaml_path}' not found. Please ensure it exists."
        )
        sys.exit(1)

    try:
        with open(chart_yaml_path, "r") as f:
            data: Dict[str, Any] = yaml_loader.load(f)
    except Exception as e:
        print(f"Error loading Chart.yaml '{chart_yaml_path}': {e}")
        sys.exit(1)

    # Update the version field
    if "version" in data:
        if data["version"] != version:
            print(
                f"Warning: Chart.yaml version '{data['version']}' does not match changelog version '{version}'. Updating..."
            )
            data["version"] = version
        else:
            print(f"Chart.yaml version is already '{version}'.")
    else:
        print(f"Adding version '{version}' to Chart.yaml.")
        data["version"] = version

    # Ensure annotations section exists
    if "annotations" not in data:
        data["annotations"] = yaml_loader.map()
        print("Created 'annotations' section in Chart.yaml.")

    data["annotations"]["artifacthub.io/changes"] = LiteralScalarString(
        artifacthub_changes_yaml_string
    )

    try:
        with open(chart_yaml_path, "w") as f:
            yaml_loader.dump(data, f)
        print(
            f"\nSuccessfully updated '{chart_yaml_path}' with version '{version}' and Artifact Hub changes."
        )
    except Exception as e:
        print(f"Error writing to Chart.yaml '{chart_yaml_path}': {e}")
        sys.exit(1)


def main() -> None:
    """
    Main function to parse command-line arguments, parse the changelog,
    and update the Chart.yaml.
    """
    parser = argparse.ArgumentParser(
        description="Convert Release Please changelog to Artifact Hub format and update Chart.yaml."
    )
    parser.add_argument(
        "--chart-dir",
        type=str,
        default=".",
        help="Path to the Helm chart directory (containing Chart.yaml and CHANGELOG.md). "
        "Defaults to the current directory ('.').",
    )
    args = parser.parse_args()

    chart_dir = args.chart_dir
    changelog_file: str = os.path.join(chart_dir, "CHANGELOG.md")
    chart_yaml_file: str = os.path.join(chart_dir, "Chart.yaml")

    # If CHANGELOG.md does not exist, simply exit without error.
    if not os.path.exists(changelog_file):
        print(f"No CHANGELOG.md found in '{chart_dir}'. Skipping update.")
        sys.exit(0)  # Exit successfully as "doing nothing" is the desired behavior

    latest_version, release_date, changes = parse_release_please_changelog(
        changelog_file
    )

    # If parsing the changelog failed for reasons other than file non-existence (e.g., bad format)
    if latest_version is None:
        print("Failed to parse changelog content. Exiting.")
        sys.exit(1)

    print(f"Parsed latest version: {latest_version} (Released: {release_date})")
    print("\nConverting changes for Artifact Hub...")

    artifacthub_formatted_changes = convert_to_artifacthub_changes(changes)
    artifacthub_changes_yaml_string = generate_artifacthub_annotation_string(
        artifacthub_formatted_changes
    )

    update_chart_yaml(chart_yaml_file, latest_version, artifacthub_changes_yaml_string)


if __name__ == "__main__":
    main()
