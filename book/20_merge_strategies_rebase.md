## Merge Strategies: Rebase

In this section, we will discuss another popular merge strategy, rebasing.

### Understanding Git Merge Strategies

Git uses three primary merge strategies:

#### Fast forward
A fast forward merge assumes that no changes have been made on the base branch since the feature branch was created. This means that the branch pointer for base can simply be "fast forwarded" to point to the same commit as the feature branch.
#### Recursive
A recursive merge means that changes have been made on both the base branch and the feature branch and git needs to recursively combine them. With a recursive merge, a new "merge commit" is made to mark the point in time when the two branches came together. This merge commit is special because it has more than one parent.
#### Octopus
A merge of 3 or more branches is an octopus merge. This will also create a merge commit with multiple parents.


### About Git rebase

`git rebase` enables you to modify your commit history in a variety of ways. For example, you can use it to reorder commits, edit them, squash multiple commits into one, and much more.

To enable all of this, `rebase` comes in several forms. For today's class, we'll be using interactive rebase: `git rebase --interactive`, or `git rebase -i` for short.

Typically, you would use `git rebase -i` to:

- Replay one branch on top of another branch
- Edit previous commit messages
- Combine multiple commits into one
- Delete or revert commits that are no longer necessary

{% include 'book/20a_activity_git_rebase_practice' %}
