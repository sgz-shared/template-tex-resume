#!/bin/bash

# Path to the JSON file
JSON_FILE="./manifest.json"

# Extract the packages array using jq
packages=$(jq -r '.packages[]' "$JSON_FILE")

# Initialize an array to store failed packages
failed_packages=()

# Iterate over each package and run a command
for package in $packages; do
  echo "Running command for package: $package"
  # Replace the following line with the actual command you want to run
  if ! tlmgr install $package; then
    failed_packages+=("$package")
  fi
done

# Check if there are any failed packages and list them
if [ ${#failed_packages[@]} -ne 0 ]; then
  echo "The following packages failed:"
  for failed_package in "${failed_packages[@]}"; do
    echo "$failed_package"
  done
else
  echo "All packages Installed!"
fi