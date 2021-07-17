## Getting it Back: `git cherry-pick`

We just learned how reflog can help us find local changes that have been discarded. So what if:

### You Just Want That One Commit

Cherry picking allows you to pick up a commit from your reflog or another branch of your project and move it to your current branch. Right now, your file directory and log should look like this:

```shell-session
$ ls
README.md
$ git log --oneline
84nqdkq initializing repo with README
```

Let's cherry pick the commit where we added file 4:

1. Find the commit ID where you added file4.md: `git reflog`
1. Cherry-pick that commit: `git cherry-pick <SHA>`

Now when you view your directory and log, you should see:

```shell-session
$ ls
file4.md
README.md
$ git log --oneline
eanu482 adding file 4
84nqdkq initializing repo with README
```

Is the commit ID the same as the one you used in the cherry pick command? Why or why not?

> Remember, when using any commands that change history, it's important to make these changes before pushing to GitHub. When you change a commit ID that has been pushed to the remote, you risk creating problems for your collaborators.
{: .warning}

### Oops, I Didn't Mean to Reset

Sometimes, you `git reset --hard` a little further than intended and want to restore that work. The good news is, that `git reset --hard` doesn't just work by going back in time, it can also go forward:

1. View the history of everywhere HEAD has pointed: `git reflog`
1. Reset to the point in time where the original `file6.md` was created: `git reset --hard <SHA>`
1. See your restored history: `git log --oneline`

Take a look at the commit IDs in `git log --oneline` compared to `git reflog`. What do you notice?

> Why didn't this command cause a merge conflict since we had already cherry-picked file 4. The reason is that `git reset --hard` is not trying to merge the two histories together, it is simply moving the branch to point to a new commit. In this case, this was what we wanted. In other cases, this could cause us to lose any work we may have done after the original reset.

See how to avoid tragedy with a convenient alias in the appendix.
