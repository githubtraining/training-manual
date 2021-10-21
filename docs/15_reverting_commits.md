## Reverting commits

In this section, we will learn about commands that re-write history and understand when you should or shouldn't use them.

### How commits are made

Every commit in Git is a unique snapshot of the project at that point in time. It contains the following information:

- Pointers to the current objects in the repository
- Commit author and email (from your config settings)
- Commit date and time
- Commit message

![Git's Basic Commit Structure](./img/commit-and-tree.png)

Each commit also contains the commit ID of its parent commit.

![Relationship between commits](./img/commit-parent.png)

Image source: ProGit v2 by Scott Chacon

### Safe operations

Git's data structure gives it integrity, but its distributed nature also requires us to be aware of how certain operations will impact the commits that have already been shared.

If an operation will change a commit ID that has been pushed to the remote (also known as a public commit), we must be careful in choosing the operations to perform.

#### Guidelines for common commands

| Command | Cautions |
| ------- | -------- |
| `revert`  | Generally safe since it creates a new commit.|
| `commit --amend` | Only use on local commits.
| `reset` | Only use on local commits.
| `cherry-pick` | Only use on local commits.
| `rebase` | Only use on local commits.

### Reverting a commit

To get your game working, you will need to reverse the commit that incorrectly renames `index.html`.

> **Warning**: Before you reverse the commit, it is a good idea to make sure you will not be inadvertently reversing other changes that were lumped into the same commit. To see what was changed in the commit, use `git show SHA`.

1. Initialize the revert: `git revert <SHA>`
1. Type a commit message.
1. Push your changes to GitHub.
