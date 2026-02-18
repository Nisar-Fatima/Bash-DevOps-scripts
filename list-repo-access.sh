#!/bin/bash

# ==========================================================
# Script Name: github-repo-read-access-audit.sh
# Description: Lists users with READ (pull) access to a
#              specific GitHub repository using GitHub API.
# Usage: ./script.sh <repo_owner> <repo_name>
# Requirements:
#   - GitHub Personal Access Token (export GITHUB_TOKEN)
#   - jq installed
# ==========================================================

# Exit immediately if a command exits with non-zero status
set -e

# GitHub API URL
API_URL="https://api.github.com"

# GitHub username and personal access token
USERNAME=$username
TOKEN=$token

# User and Repository information
REPO_OWNER=$1
REPO_NAME=$2

# Function to make a GET request to the GitHub API
function github_api_get {
    local endpoint="$1"
    local url="${API_URL}/${endpoint}"

    # Send a GET request to the GitHub API with authentication
    curl -s -u "${USERNAME}:${TOKEN}" "$url"
}

# Function to list users with read access to the repository
function list_users_with_read_access {
    local endpoint="repos/${REPO_OWNER}/${REPO_NAME}/collaborators"

    # Fetch the list of collaborators on the repository
