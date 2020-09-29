## Git Stash

While working on your project, you might suddenly need to change your focus from the task you are currently working on to a new task. When that happens, figuring out what to do with your in progress work might be difficult. Do you commit it even though it isn't "ready to be committed"? Do you create a new branch with your changes and come back to it? Do you need to delete your changes and just re-create the work when you can come back to this task?

Although there are a couple of solutions to this problem. This section is going to review the use of `git stash` to store changes you have made in the event that you do not want to commit them to the project's history.

The `git stash` command enables you to store changes that live in the working directory (unstaged changes) and staging area (staged changes) and stores them for later use. These stored changes, like the `reflog`, are only reflected on your local copy of the repository. Once you are ready to retrieve those changes, you can apply them or `git pop` them back onto a branch to begin working on them again.

### How to use `git stash`

