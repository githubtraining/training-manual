### About Git rebase

`git rebase` enables you to modify your commit history in a variety of ways. For example, you can use it to reorder commits, edit them, squash multiple commits into one, and much more.

To enable all of this, `rebase` comes in several forms. For today's class, we'll be using interactive rebase: `git rebase --interactive`, or `git rebase -i` for short.

Typically, you would use `git rebase -i` to:

- Replay one branch on top of another branch
- Edit previous commit messages
- Combine multiple commits into one
- Delete or revert commits that are no longer necessary