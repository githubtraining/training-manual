### How Commits Are Made

Every commit in Git is a unique snapshot of the project at that point in time. It contains the following information:

- Pointers to the current objects in the repository
- Commit author and email (from your config settings)
- Commit date and time
- Commit message

![Git's Basic Commit Structure](/book/images/commit-and-tree.png)

Each commit also contains the commit ID of its parent commit.

![Relationship between commits](/book/images/commit-parent.png)

Image source: ProGit v2 by Scott Chacon
