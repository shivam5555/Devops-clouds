# Get latest commit hash of local branch
LOCAL=$(git rev-parse @)

# Get latest commit hash of remote branch
REMOTE=$(git rev-parse @{u})

# Compare Local vs Remote
if [ "$LOCAL" != "$REMOTE" ]; then
    echo "📥 Remote updates found! Pulling changes..."
    git pull origin main --rebase
else
    echo "✅ Already up-to-date with remote."
fi

