#!/bin/bash

# Set the base directory
BASE_DIR="/path/to/project/root"
LOG_FILE="$BASE_DIR/generate_files.log"

# Define required files
declare -A REQUIRED_FILES=(
  ["README.md"]="Default README with project details."
  ["LICENSE"]="MIT License."
  ["CODE_OF_CONDUCT.md"]="Community guidelines."
  ["CONTRIBUTING.md"]="Contribution instructions."
  ["SECURITY.md"]="Security reporting process."
  [".github/workflows/ci.yml"]="CI/CD workflow setup."
  ["CHANGELOG.md"]="Changelog for tracking updates."
)

# Function to log messages with timestamp
log_message() {
  local MESSAGE=$1
  echo "$(date '+%Y-%m-%d %H:%M:%S') - $MESSAGE" | tee -a "$LOG_FILE"
}

# Validate directory structure
if [[ ! -d "$BASE_DIR/.github/workflows" ]]; then
  log_message "Creating .github/workflows directory..."
  mkdir -p "$BASE_DIR/.github/workflows" || { log_message "Failed to create .github/workflows directory"; exit 1; }
fi

# Iterate through files and create missing ones
for FILE in "${!REQUIRED_FILES[@]}"; do
  if [[ ! -f "$BASE_DIR/$FILE" ]]; then
    log_message "Creating $FILE..."
    echo "${REQUIRED_FILES[$FILE]}" > "$BASE_DIR/$FILE" || { log_message "Failed to create $FILE"; exit 1; }
  else
    log_message "$FILE already exists. Skipping..."
  fi
done

log_message "File generation and validation completed."

# Summary of actions taken
log_message "Summary of actions:"
for FILE in "${!REQUIRED_FILES[@]}"; do
  if [[ -f "$BASE_DIR/$FILE" ]]; then
    log_message "$FILE exists."
  else
    log_message "$FILE does not exist."
  fi
done