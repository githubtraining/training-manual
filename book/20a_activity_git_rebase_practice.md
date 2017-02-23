### Creating a Linear History

One of the most common uses of rebase is to eliminate recursive merges and create a more linear history. In this activity, we will learn how it is done.

![Git Rebase](/book/images/git-rebase.png)

#### Set Up
1. Find the SHA of the initial commit: `git log --oneline`
- Reset to the SHA of the initial commit: `git reset --hard SHA`
- Create a new branch and check out to it: `git checkout -b rebase-me`
- Cherry-pick files 4-6 onto the `rebase-me` branch using the reflog.
- Checkout to master: `git checkout master`
- Cherry-pick files 1-3 onto the `rebase-me` branch using the reflog.
- Look at your history: `git log --oneline --graph --decorate --all`
- If you merged now, it would be a recursive merge.

#### Begin the Rebase
1. Checkout to the `rebase-me` branch: `git checkout rebase-me`
- Start the merge: `git rebase -i master`
- Your text editor will open, allowing you to see the commits to be rebased.
- Save and close the `rebase-todo`.
- Watch your rebase happen on the command line.
- Take another look at your history: `git log --oneline --graph --decorate --all`
- If you merged now, it would be a fast-forward merge.

#### Finish the Merge
1. Checkout to master, the branch you will merge into: `git checkout master`
- Merge your changes in to master: `git merge rebase-me`
