#!/bin/bash

# Get the current version from a file (e.g., version.txt)
current_version=$(cat version.txt)

# Increment the version number (simple example)
new_version=$((current_version + 1))

# Update the version in the file
echo $new_version > version.txt

# Commit the change and tag the new version in Git
git add version.txt
git commit -m "Bump version to $new_version"
git tag -a "v$new_version" -m "Version $new_version"

# Push the changes and tags to the remote repository
git push origin main --tags

