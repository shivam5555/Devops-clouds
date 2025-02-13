### Git Commands Reference

## 🛠 Basic Git Commands
- `git init` → Initialize a new Git repository.
- `git status` → Check the status of your working directory.
- `git add .` → Stage all changes for commit.
- `git commit -m "message"` → Commit changes with a message.
- `git log` → View commit history.

## 🌿 Branching & Merging
- `git branch` → List all branches.
- `git checkout -b <branch-name>` → Create and switch to a new branch.
- `git merge <branch-name>` → Merge a branch into the current branch.
- `git branch -d <branch-name>` → Delete a branch.

## 🔄 Syncing with Remote
- `git remote -v` → Check remote repositories.
- `git fetch origin` → Fetch latest changes from remote.
- `git pull origin main` → Pull latest updates from GitHub.
- `git push origin <branch-name>` → Push branch to GitHub.

## 🛠 Advanced Git
- `git stash` → Temporarily save changes.
- `git rebase main` → Reapply commits on top of the main branch.
- `git cherry-pick <commit-hash>` → Apply a specific commit to another branch.
- `git revert <commit-hash>` → Undo a specific commit safely.
