#!/bin/bash
REPO_URL="<path-to-repo>"
IMAGE_NAME="<image-name>"
BUILDER="paketobuildpacks/builder:full" # or any other builder


# Clone the repository using SSH

# DESTINATION_FOLDER="users-apps" ==> if you want to clone the repo in a specific folder
git clone "${REPO_URL}"  #  ==> "${DESTINATION_FOLDER}"

# Extract the project folder path from the repository URL
REPO_PATH=$(basename "${REPO_URL}" .git)
PROJECT_FOLDER="${REPO_PATH##*/}"

# Build the image from the project folder
pack build "${IMAGE_NAME}" --path "${PROJECT_FOLDER}" --builder "${BUILDER}"

# <---------If you want to clone the repo using specific SSH key --------->

# SSH_KEY_PATH="/path/to/ssh/key"
# eval "$(ssh-agent -s)"
# ssh-add "${SSH_KEY_PATH}"
# Clone the repository using specific SSH
# GIT_SSH_COMMAND="ssh -i ${SSH_KEY_PATH}" git clone "${REPO_URL}" "${DESTINATION_FOLDER}"

