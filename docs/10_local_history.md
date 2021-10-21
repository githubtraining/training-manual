## Viewing local project history

In this section, you will discover commands for viewing the history of your project.

### Using Git log

When you clone a repository, you receive the history of all the commits made in that repository. The log command allows us to view that history on our local machine.

Let's take a look at some option switches you can use to customize your view of the project history. You can find these options, and many more, on [git-scm.com](https://git-scm.com/docs/git-log). _(Note: `--graph` is default on most Git Bash for Windows terminals.)_

```sh
git log
git log --oneline
git log --oneline --graph
git log --oneline --graph --decorate
git log --oneline --graph --decorate --all
git log --stat
git log --patch
```

> Use the up and down arrows or press enter to view additional log entries. Type `q` to quit viewing the log and return to the command prompt.
