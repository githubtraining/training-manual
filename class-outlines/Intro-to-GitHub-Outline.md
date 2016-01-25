# Introduction to GitHub

## Class Set-up
- create a class repo with the following in the readme:
- Instructor names and contact information
- Markdown guides
- Create an issue for everyone to comment on at beginning of class (will use this to add everyone as a collaborator)

## Class Outline

### Introductions
- Introduce trainer(s)

### Class Goals:
- understand the concepts of distributed version control
- get started using GitHub
- basic Git concepts
- GitHub workflows

### What is GitHub?
- GitHub is a collaboration platform that allows you to share your development projects with others.
- It provides a social connector with your fellow developers around the world.
- It enables code review and code management.
- It helps you plan and organize the work to be completed on your project.

### What is Git?
- Git is an open source version control system.
- Specifically it is called a distributed version control system.

### What is Distributed Version Control?
- Enables everyone to have a complete local copy of the repository and all of it's history.

### Logging in to GitHub
- You will need a GitHub login to participate in this Class
- if you have not already created one, go ahead and do it now
- Log in to GitHub as `githubteacher`

### Tour of the Dashboard
- This is the dashboard that shows your repos, activity on your repos, and repos owned by others that you have contributed to.

### Tour of a repository
- open the class repository (paste link in chat)
- repository owner - repository name
- description
- README.md - welcome mat to the repository - special file that is rendered below the project files
- tabs on the right
 - Code view - also sometimes called root of the project - this is where the project files live
 - Issues - discussions about bugs and features
 - Pull request - discussions about changes

### Adding collaborators
- Describe read/write permissions, show manual process for giving write permission (i.e. adding collaborators)
- Have everyone comment on Issue created pre-class, then run [`add-collaborators.rb`](https://github.com/github/training-utils/blob/master/add-collaborators)

### Creating issues
- Create new Issue to demo basic markdown formatting for headers, bullets
- Show labels and assignee
- Explain that Issues a primary form of communication on GitHub
- Show @mentions

### Notification preferences
- You probably noticed that your inbox just got hit with a ton of emails
- Show how to unsubscribe from a specific issue or pull request
- Show how to unwatch the repo
- Show how to change notification settings to web only

### The GitHub workflow
- Show https://guides.github.com/introduction/flow/
- Issues for general discussion, this is workflow for actually adding, changing, removing files
- Branches are an important part of working on GitHub
 - Our deployable code lives on the master branch
 - Feature branches create a copy of the master branch at that point in time to allow us to try new things in a safe place
- Commits are snapshots of the repository at that point in history
- Pull requests start a conversation about the changes you have made in your feature branch
- Once the review and discussion is complete, the branch is merged into the master branch

### Practice GitHub Flow
- Add a file - name it <your-user-name-bio.md> this allows you to use the markdown formatting in your bio
- Commit the file, adding it to a branch

### Tour of a Pull request
- Create a pull request
- Show conversation, commits, files changed views
- Merge the pull request (close the issue in the merge commit)
- Show files added to `master`

### Working with GitHub
- Today we have covered the most basic workflow using GitHub.com
- If you are ready to dig deeper, we encourage you to attend one of our more intense classes, GH for Everyone or GH for Developers

-- End of Class --
