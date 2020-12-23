## Merge Strategies: Rebase

In this section, we will discuss another popular merge strategy, rebasing.

### Understanding Git Merge Strategies

Git uses three primary merge strategies:

#### Fast Forward

A fast forward merge assumes that no changes have been made on the base branch since the feature branch was created. This means that the branch pointer for base can simply be "fast forwarded" to point to the same commit as the feature branch.

#### Recursive

A recursive merge means that changes have been made on both the base branch and the feature branch and git needs to recursively combine them. With a recursive merge, a new "merge commit" is made to mark the point in time when the two branches came together. This merge commit is special because it has more than one parent.

#### Octopus

A merge of 3 or more branches is an octopus merge. This will also create a merge commit with multiple parents.

### About Git Rebase

`git rebase` enables you to modify your commit history in a variety of ways. For example, you can use it to reorder commits, edit them, squash multiple commits into one, and much more.

To enable all of this, `rebase` comes in several forms. For today's class, we'll be using interactive rebase: `git rebase --interactive`, or `git rebase -i` for short.

Typically, you would use `git rebase -i` to:

- Replay one branch on top of another branch
- Edit previous commit messages
- Combine multiple commits into one
- Delete or revert commits that are no longer necessary

### Creating a Linear History

One of the most common uses of rebase is to eliminate recursive merges and create a more linear history. In this activity, we will learn how it is done.

![Git Rebase](./img/git-rebase.png)

#### Set Up

1. Find the SHA of the initial commit: `git log --oneline`
1. Reset to the SHA of the initial commit: `git reset --hard SHA`
1. Create a new branch and check out to it: `git switch -c rebase-me`
1. Cherry-pick files 4-6 onto the `rebase-me` branch using the reflog.
1. Switch to main: `git switch main`
1. Cherry-pick files 1-3 onto the `main` branch using the reflog.
1. Look at your history: `git log --oneline --graph --decorate --all`
1. If you merged now, it would be a recursive merge.

#### Begin the Rebase

1. Switch to the `rebase-me` branch: `git switch rebase-me`
1. Start the merge: `git rebase -i main`
1. Your text editor will open, allowing you to see the commits to be rebased.
1. Save and close the `rebase-todo`.
1. Watch your rebase happen on the command line.
1. Take another look at your history: `git log --oneline --graph --decorate --all`
1. If you merged now, it would be a fast-forward merge.

#### Finish the Merge

1. Switch to main, the branch you will merge into: `git switch main`
1. Merge your changes in to main: `git merge rebase-me`

If you'd like some help keeping everything clean with an alias, don't forget to check the appendix!
