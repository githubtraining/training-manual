### Reset Soft

Using the practice repository we created earlier, let's try a `reset --soft`.

1. View the history of our project: `git log --oneline --decorate`
- Identify the current location of `HEAD`.
- Go back two commits in history: `git reset --soft HEAD~2`
- See the tip of our branch (and `HEAD`) is now sitting two commits earlier than it was before: `git log --oneline --decorate`
- The changes we made in the last two commits should be in the staging area: `git status`
- Re-commit these changes: `git commit -m "re-add file 5 and 6"`

> **Note:** In this example, the tilde tells git we want to reset to two commits before the current location of `HEAD`. You can also use the first few characters of the commit ID to pinpoint the location where you would like to reset.
