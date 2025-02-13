#!/bin/bash

# Define your Git repository path
REPO_PATH="/home/sanji/git/Devops-Clouds"

# Navigate to the repository
cd "$REPO_PATH" || { echo "❌ Repository not found! Exiting..."; exit 1; }

# Fetch latest changes
echo "🔄 Fetching latest updates..."
git fetch origin main

# Define available topics
TOPICS=("git-basics" "git-automation" "ci-cd-github-actions" "ci-cd-jenkins" "ci-cd-gitlab" \
        "ansible-basics" "ansible-playbooks" "terraform-basics" "terraform-aws" \
        "docker-basics" "docker-compose" "kubernetes-basics" "kubernetes-helm" \
        "aws-basics" "aws-eks" "aws-lambda" "gcp-basics" "azure-basics" \
        "devsecops" "prometheus-grafana" "elk-stack")

# Display topic options
echo "📌 Select a topic for the branch:"
for i in "${!TOPICS[@]}"; do
    echo "$(($i+1))) ${TOPICS[$i]}"
done

# Get user choice
read -r TOPIC_CHOICE

# Validate choice
if [[ "$TOPIC_CHOICE" -lt 1 || "$TOPIC_CHOICE" -gt "${#TOPICS[@]}" ]]; then
    echo "❌ Invalid choice! Please select a valid number (1-${#TOPICS[@]})."
    exit 1
fi

# Get selected topic name
TOPIC="${TOPICS[$(($TOPIC_CHOICE-1))]}"

# Generate a branch name with timestamp
BRANCH_NAME="${TOPIC}-$(date +'%Y%m%d-%H%M%S')"

# Create and switch to the new branch
echo "🌿 Creating and switching to branch: $BRANCH_NAME"
git checkout -b "$BRANCH_NAME"

# Merge latest changes from main
echo "🔄 Merging latest 'main' branch changes into '$BRANCH_NAME'..."
git pull origin main --rebase

# Push the new branch to remote
echo "🚀 Pushing '$BRANCH_NAME' to remote..."
git push -u origin "$BRANCH_NAME"

# Show all branches
git branch -a

echo "✅ Branch '$BRANCH_NAME' created, updated, and pushed successfully!"

