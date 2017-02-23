### The Two Stage Commit

After you have created your file, it is time to create your first snapshot of the repository. When working from the command line, you will need to be familiar with the idea of the two stage commit.

![The Two Stage Commit - Part 1](book/images/two-stage-commit-a.jpg)

When you work locally, your files exist in one of four states. They are either untracked, modified, staged, or committed.

An untracked file is a new file that has never been committed.

Git tracks these files, and keeps track of your history by organizing your files and changes in three working trees. They are Working, Staging (also called Index), and History. When we are actively making changes to files, this is happening in the working tree.

![The Two Stage Commit - Part 2](book/images/two-stage-commit-b.jpg)

To add these files to version control, you will create a collection of files that represent a discrete unit of work. We build this unit in the staging area.

![The Two Stage Commit - Part 3](book/images/two-stage-commit-c.jpg)

When we are satisfied with the unit of work we have assembled, we will take a snapshot of everything in the staging area. This is called a commit.

![The Two Stage Commit - Part 4](book/images/two-stage-commit-d.jpg)

In order to make a file part of the version controlled directory we will first do a git add and then we will do a git commit. Let's do it now.

1. First, let's check the status of our working tree: `git status`
- Move the file from the working tree to the staging area: `git add my-file.md`
- Let's see what happened: `git status`
- Now let's take our first snapshot: `git commit`
- Git will open your default text editor to request a commit message. Simply type your message on the top line of the file. Any line without a # will be included in the commit message.
- Save and close the commit message
- Let's take another look at our repository status: `git status`

> **Note:** Good commit messages should:
- Be short. ~50 characters is ideal.
- Describe the change introduced by the commit.
- Tell the story of how your project has evolved.
