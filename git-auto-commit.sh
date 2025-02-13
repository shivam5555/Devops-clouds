#!/bin/bash

# Define the absolute path of your Git repository
REPO_PATH="/home/sanji/git/Devops-Clouds"

# Navigate to the repository
cd "$REPO_PATH" || { echo "❌ Repository not found at $REPO_PATH! Exiting..."; exit 1; }

# Set commit message with timestamp
COMMIT_MSG="Auto-commit: $(date +'%Y-%m-%d %H:%M:%S')"

# Pull latest changes before committing
git pull origin main --rebase

# Add all changes
git add .

# Commit with message
git commit -m "$COMMIT_MSG"

# Push changes to GitHub
git push origin git-automation-*

echo "✅ Auto-commit and push completed successfully!"

