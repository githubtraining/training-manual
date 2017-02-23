### Creating a Local Copy of the repo

![Cloning a repository](book/images/clone-diagram.jpg)

Before we can work locally, we will need to create a clone of the repository.

When you clone a repository you are creating a copy of everything in that repository, including its history. This is one of the benefits of a DVCS like git - rather than being required to query a slow centralized server to review the commit history, queries are run locally and are lightning fast.

Let's go ahead and clone the class repository to your local desktop.

1. Navigate to the *Code* tab of the class repository on GitHub.
- Click *Clone or download*.
- Copy the *clone URL* to your clipboard.
- Open your command line application.
- Retrieve a full copy of the repository from GitHub: `git clone <CLONE-URL>`
- Once the clone is complete, cd into the new directory created by the clone operation: `cd <REPOSITORY-NAME>`
