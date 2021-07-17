## Alias Pro Tips

### Tidying Up Locally

There are shortcuts that allow you to do a deep clean if you've neglected the state of your local repository. The following TWO configs (both need to be added) will: switch to main, update main from the origin, and delete all local branches already merged into main.

**Note:** Depending on your shell, you might have to add these aliases directly to your git config file, which you can open by typing `git config --global -e`.

```sh
git config --global alias.bclean "!f() { branches=$(git branch --merged ${1-main} | grep -v " ${1-main}$"); [ -z \"$branches\" ] || git branch -d $branches; }; f"
```

**Warning:** You might want to edit this to avoid local deletions of important branches like `gh-pages` or `production`.

```sh
git config --global alias.bdone "!f() { git switch ${1-main} && git up && git bclean ${1-main}; }; f"
```

- This alias won't work until we add `git up`, which is shared at the end of this course.

### Quick Commits

Sometimes, you'll want to do the opposite of granular commits and move quickly. Here's an alias that stages all saved changes and gives the stub for writing a commit message.

```sh
git config --global alias.cm "!git add -A && git commit -m"
```

- Using the ! prefix allows you to use any command and not just git commands in the alias. It also allows you to string two commands together.

- The `-A` flag adds all changes, including untracked files, to the index.

### Returning to the Remote

After finishing up locally, you might determine that you want to head back to your remote repository to make sure that everything looks right.

**Note:** Depending on your shell, you might have to add these aliases directly to your git config file, which you can open by typing `git config --global -e`.

WINDOWS

```sh
git config --global alias.open = "!f() { REPO_URL=$(git config remote.origin.url); explorer ${REPO_URL%%.git}; }; f"
```

MAC/LINUX

```sh
git config --global alias.open = "!f() { REPO_URL=$(git open remote.origin.url); explorer ${REPO_URL%%.git}; }; f"
```

And just in case you're prone to forget your word choices, you can link multiple aliases together to accomplish the same purpose.

```sh
git config --global alias.browse "!git open"
```

### Alternatives to Stashing -- Check Points

Sometimes, you'll want to save your work in a commit without having to think of a commit message, or before you're ready to organize your changes. If that's the case, you can create aliases to create "save points".

```sh
git config --global alias.save "!git add -A && git commit -m 'SAVEPOINT'"
```

or

```sh
git config --global alias.wip "commit -am 'WIP'"
```

- Using the ! prefix allows you to use any command and not just git commands in the alias. It also allows you to string two commands together.
- In `save`, the `-A` flag adds all changes, including untracked files, to the index.
- In `wip`, only tracked changes are committed.

When you're ready to return to work, you can use `git undo` to reset your prior commit and keep all of the changes from that commit in the working directory.

```sh
git config --global alias.undo "reset HEAD~1 --mixed"
```

If the only thing that you needed to change was the commit message, you can update by using `git amend`.

```sh
git config --global alias.amend "commit -a --amend"
```

- `-a` will add any modifications and deletions of existing files to your commit, but ignore brand new files.

### Avoiding Tragedy

Sometimes, you'll reset --hard too soon, before you've made a commit. If you reset work that you never committed, it's gone for good. Using a command like `git wipe` will commit everything in your working directory, and then do a hard reset to get rid of that commit (but it's still reachable in the reflog). This is a really safe option that allows you to keep yourself from making sad mistakes.

```sh
git config --global alias.wipe "!git add -A && git commit -qm 'WIPE SAVEPOINT' && git reset HEAD~1 -- hard"
```

- `-q` stands for `--quiet`, which suppresses the commit summary message.

### Getting Your Working Directory Up to Date

```sh
git pull --rebase --prune
```

is a helpful command that allows you to pull changes down from the remote and place local commits to follow the remote updates.

If you'd like to combine this with another advanced workflow tip and update your submodules, that command might look like this:

```sh
git config --global alias.up "!git pull --rebase --prune $@ && git submodule update --init --recursive"
```

- Using the ! prefix allows you to use any command and not just git commands in the alias. It also allows you to string two commands together.
