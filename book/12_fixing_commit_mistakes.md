## Fixing Commit Mistakes

In this activity, we will begin to explore some of the ways Git and GitHub can help us shape our project history.

### Revising Your Last Commit

`git commit --amend` allows us to make changes to the commit that HEAD is currently pointing to. Two of the most common uses are:

- Re-writing commit messages
- Adding files to the commit


1. Create a new file: `touch file7.txt`
- When you are adding files to the previous commit, they should be in the staging area. Move your file to the staging area: `git add file7.txt`
- `git commit --amend`
- The text editor will open, allowing you to edit your commit message.

>**Note:** You can actually amend any data stored by the last commit such as commit author, email, etc.
