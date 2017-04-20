---
layout: docs
toc: true
---

# Preparing to Teach

GitHub for Developers is designed for new Git and GitHub users who are comfortable on the command line. Complete the following steps to prepare for class

1. Create a class repository in the `githubteacher` account.
1. Delete the githubteacher copy of the `github-games` repo.



## Welcome to GitHub for Developers

Today you will embark on an exciting new adventure: learning how to use Git and GitHub.

As we move through today's materials, please keep in mind: this class is for you! Be sure to follow along, try the activities, and ask lots of questions!

### License

The prose, course text, slide layouts, class outlines, diagrams, HTML, CSS, and Markdown code in the set of educational materials located in this repository are licensed as [CC BY 4.0](http://creativecommons.org/licenses/by/4.0/legalcode). The Octocat, GitHub logo and other already-copyrighted and already-reserved trademarks and images are not covered by this license.

For more information, visit: http://creativecommons.org/licenses/by/4.0/



> ## Facilitator Note

> As participants arrive, direct them to complete this section in preparation for class.

> You should ensure everyone has successfully completed these steps before you begin.



## Getting Ready for Class

While you are waiting for class to begin, please take a few minutes to set up your local work environment.

### Step 1: Set Up Your GitHub.com Account

For this class, we will use a public account on GitHub.com. We do this for a few reasons:

- We don't want you to "practice" in repositories that contain real code.
- We are going to break some things so we can teach you how to fix them. (therefore, refer to the bullet above)

If you already have a github.com account you can skip this step. Otherwise, you can set up your free account by following these steps:

1. Access GitHub.com and click Sign up.
1. Choose the free account.
1.You will receive a verification email at the address provided.
1. Click the link to complete the verification process.

### Step 2: Install Git

Git is an open source version control application. You will need Git installed for this class.

You may already have Git installed so let's check! Open Terminal if you are on a Mac, or PowerShell if you are on a Windows machine, and type:

```sh
$ git --version
```

You should see something like this:

```sh
$ git --version
git version 2.11.0
```

Anything over 2.0 will work for this class!

#### Downloading and Installing Git

If you don't already have Git installed, you can download Git at www.git-scm.com.

If you need additional assistance installing Git, you can find more information in the ProGit chapter on installing Git: `http://git-scm.com/book/en/v2/Getting-Started-Installing-Git`.

#### Where is Your Shell?

Now is a good time to create a shortcut to the command line application you will want to use with Git:

- If you are working on Windows, you can use `Git Bash` which is installed with the Git package or `Git Shell` which is installed with GitHub Desktop.
- If you are working on a Mac or other Unix based system, you can use the terminal application.

Go ahead and open your command line application now!

### Step 3: Set Up Your Text Editor

For this class, we will use a basic text editor to interact with our code. Let's make sure you have one installed and ready to work from the command line.

#### Pick Your Editor

You can use almost any text editor, but we have the best success with the following:

- GitPad
- [Atom](https://atom.io/)
- Vi or Vim
- Sublime
- Notepad or Notepad++

If you do not already have a text editor installed, go ahead and download and install one of the above editors now!

#### Your Editor on the Command Line

After you have installed an editor, confirm you can open it from the command line.

> If you are working on a Mac, you will need to Install Shell Commands from the Atom menu, this happens as part of the installation process for Windows.

If installed properly, the following command will open the Atom text editor:

```sh
$ atom .
```

### Exploring

Congratulations! You should now have a working version of Git and a text editor on your system. If you still have some time before class begins, here are some interesting resources you can check out:

- *github.com/explore* Explore is a showcase of interesting projects in the GitHub Universe. See something you want to re-visit? Star the repository to make it easier to find later.
- *services.github.com/on-demand* Our On Demand Training courses are GitHub's open source training materials. The site contains additional resources you may find helpful when reviewing what you have learned in class! You can even make contributions to the materials or open issues if you would like us to explain something in greater detail. Find the open source repository here: `https://github.com/github/training-kit`

## Getting Started With Collaboration

We will start by introducing you to Git, GitHub, and the collaboration features we will use throughout the class. Even if you have used GitHub in the past, we hope this information will provide a baseline understanding of how to use it to build better software!

### What is GitHub?

GitHub is a collaboration platform built on top of a distributed version control system called Git.

![GitHub's beloved Octocat logo](book/images/github-icon.jpg)

In addition to being a place to host and share your Git projects, GitHub provides a number of features to help you and your team collaborate more effectively. These features include:

* Issues
* Pull Requests
* Projects
* Organizations and Teams

![GitHub Collaboration Features](book/images/collaboration-features.jpg)

### The GitHub Ecosystem

Rather than force you into a "one size fits all" ecosystem, GitHub strives to be the place that brings all of your favorite tools together. For more information on integrations, check out https://github.com/integrations.

![The GitHub Integrations Directory](book/images/github-ecosystem.png)

You may even find some new, indispensable tools to help with continuous integration, dependency management, code quality and much more.

### What is Git?

**Git is:**

- a distributed version control system or DVCS.
- free and open source.
- designed to handle everything from small to very large projects with speed and efficiency.
- easy to learn and has a tiny footprint with lightning fast performance.

Git features cheap local branching, convenient staging areas, and multiple workflows.

As we begin to discuss Git (and what makes it special) it would be helpful if you could forget everything you know about other version control systems (VCSs) for just a moment. Git stores and thinks about information very differently than other VCSs.

We will learn more about how Git stores your code as we go through this class, but the first thing you will need to understand is how Git works with your content.

#### Snapshots, not Deltas

One of the first ideas you will need understand is that Git does not store your information as series of changes. Instead Git takes a snapshot of your repository at a given point in time. This snapshot is called a commit.

#### Optimized for Local Operations

Git is optimized for local operation. When you clone a copy of a repository to your local machine, you receive a copy of the entire repository and its history. This means you can work on the plane, on the train, or anywhere else your adventures find you!

#### Branches are Lightweight and Cheap

Branches are an essential concept in Git.

When you create a new branch in Git, you are actually just creating a pointer that corresponds to the most recent snapshot in a line of work. Git keeps the snapshots for each branch separate until you explicitly tell it to merge those snapshots into the main line of work.

#### Git is Explicit

Which brings us to our final point for now; Git is very explicit. It does not do anything until you tell it to. No auto-saves or auto-syncing with the remote, Git waits for you to tell it when to take a snapshot and when to send that snapshot to the remote.

### Exploring a GitHub Repository

A repository is the most basic element of GitHub. It is easiest to imagine as a project's folder. However, unlike an ordinary folder on your laptop, a GitHub repository offers simple yet powerful tools for collaborating with others.

A repository contains all of the project files (including documentation), and stores each file's revision history. Whether you are just curious or you are a major contributor, knowing your way around a repository is essential!

![GitHub Repositories](book/images/repository-intro.jpg)

### User Accounts vs. Organization Accounts

There are two account types in GitHub, user accounts and organization accounts. While there are many differences in these account types, on of the more notable differences is how you handle permissions.

#### User Accounts
When you signed up for GitHub, you were automatically given a user account. Permissions for a user account are simple, you add people as collaborators to specific repositories to give them full read-write access to the project.
#### Organization Accounts
Organization accounts provide more granular control over repository permissions. In an organization account you create teams of people and then give those teams access to specific repositories. Permissions can be assigned at the team level (e.g, read, write, or admin).

### Repository Navigation
#### Code
The code view is where you will find the files included in the repository. These files may contain the project code, documentation, and other important files. We also call this view the root of the project. Any changes to these files will be tracked via Git version control.
#### Issues
Issues are used to track bugs and feature requests. Issues can be assigned to specific team members and are designed to encourage discussion and collaboration.
#### Pull Requests
A Pull Request represents a change, such as adding, modifying, or deleting files, which the author would like to make to the repository. Pull Requests help you write better software by facilitating code review and showing the status of any automated tests.
#### Projects
Projects allow you to visualize your work with Kanban style boards. Projects can be created at the repository or organization level.
#### Wiki
Wikis in GitHub can be used to communicate project details, display user documentation, or almost anything your heart desires. And of course, GitHub helps you keep track of the edits to your Wiki!
#### Pulse
Pulse is your project's dash board. It contains information on the work that has been completed and the work in progress.
#### Graphs
Graphs provide a more granular view into the repository activity, including who has contributed, when the work is being done, and who has forked the repository.
#### README.md
The README.md is a special file that we recommend all repositories contain. GitHub looks for this file and helpfully displays it below the repository. The README should explain the project and point readers to helpful information within the project.
#### CONTRIBUTING.md
The CONTRIBUTING.md is another special file that is used to describe the process for collaborating on the repository. The link to the CONTRIBUTING.md file is shown when a user attempts to create a new issue or pull request.
#### ISSUE_TEMPLATE.md
The ISSUE_TEMPLATE.md (and its twin the pull request template) are used to generate templated starter text for your project issues. Any time someone opens an issue, the content in the template will be pre-populated in the issue body.

### Introduction to GitHub Pages

GitHub Pages enable you to host free, static web pages directly from your GitHub repositories. Several of the projects we use in class will use GitHub Pages as the deployment strategy. We will barely scratch the surface in this class, but there are a few things you need to know:

- You can create two types of websites, a user/organization site or a project site. We will be working with project websites.
- For a project site, GitHub will only serve the content on a specific branch. Depending on the settings for your repository, GitHub can serve your site from a `master` or `gh-pages` branch, or a `/docs` folder on the `master` branch.
- The rendered sites for our projects will appear at `githubschool.github.io/repo-name`.


### Using GitHub Issues

In GitHub, you will use issues to record and discuss ideas, enhancements, tasks, and bugs. Issues make collaboration easier by:

- Replacing email for project discussions, ensuring everyone on the team has the complete story, both now and in the future.
- Allowing you to cross-link to related issues and pull requests.
- Creating a single, comprehensive record of how and why you made certain decisions.
- Allowing you to easily pull the right people into a conversation with @ mentions and team mentions.

### Activity: Creating A GitHub Issue

Follow these steps to create an issue in the class repository:

1. Click the *Issues* tab.
1. Click *New Issue*.
1. Type the following in the Subject line: `YOUR-USERNAME Workflow`
1. In the body of the issue, include the text below:

```sh
YOUR-USERNAME will choose an image, add a caption, and add both to a file.

- [ ] Create a branch
- [ ] Edit the file
- [ ] Commit the changes
- [ ] Create a Pull Request
- [ ] Request a Review
- [ ] Make more changes
- [ ] Get an approval
- [ ] Merge the Pull Request
```


### Using Markdown

GitHub uses a syntax called **Markdown** to help you add basic text formatting to Issues, Pull Requests, and files with the `.md` extension.

### Commonly Used Markdown Syntax
#### `# Header`
The `# ` indicates a Header. # = Header 1, ##  = Header 2, etc.
#### `* List item`
A single `*` or `-` followed by a space will create a bulleted list.
#### `**Bold item**`
Two asterix `**` on either side of a string will make that text bold.
#### `- [ ] Checklist`
A `-` followed by a space and `[ ]` will create a handy checklist in your issue or pull request.
#### `@mention`
When you @mention someone in an issue, they will receive a notification - even if they are not currently subscribed to the issue or watching the repository.
#### `#975`
A `#` followed by the number of an issue or pull request (without a space) in the same repository will create a cross-link.
#### `:smiley:`
Tone is easily lost in written communication. To help, GitHub allows you to drop emoji into your comments. Simply surround the emoji id with `:`.

## Understanding the GitHub Flow

In this section, we will discuss the collaborative workflow enabled by GitHub.

### The Essential GitHub Workflow

![GitHub Workflow](book/images/github-workflow.png)


The GitHub flow is a lightweight workflow that allows you to experiment with new ideas safely, without fear of compromising a project.

Branching is a key concept you will need to understand. Everything in GitHub lives on a branch. By default, the "blessed" or "canonical" version of your project lives on a branch called `master`. This branch can actually be named anything, as we will see in a few minutes.

When you are ready to experiment with a new feature or fix an issue, you create a new branch of the project. The branch will look exactly like `master` at first, but any changes you make will only be reflected in your branch. Such a new branch is often called a "feature" branch.

As you make changes to the files within the project, you will commit your changes to the feature branch.

When you are ready to start a discussion about your changes, you will open a pull request. A pull request doesn't need to be a perfect work of art - it is meant to be a starting point that will be further refined and polished through the efforts of the project team.

When the changes contained in the pull request are approved, the feature branch is merged onto the master branch. In the next section, you will learn how to put this GitHub workflow into practice.

### Exploring

Here are some interesting things you can check out later:

- *guides.github.com/introduction/flow/* An interactive review of the GitHub Workflow.

## Branching with Git

The first step in the GitHub Workflow is to create a branch. This will allow us to experiment with new features without accidentally introducing untested changes on our production branch.

### Branching Defined

![GitHub Workflow](book/images/github-workflow.png)

When you create a branch, you are essentially creating an identical copy of the project at that point in time. This isn't the same as creating a physical copy on disk. In the background, a branch is just a pointer.

Let's learn how you can create a new branch.

### Activity: Creating A Branch with GitHub

Earlier you created an issue about the file you would like to edit. Let's create the branch you will use to edit your file.

Follow these steps to create a new branch in the class repository:


> **Warning:** You will need to have collaborator access on the class repository before you can create a branch on GitHub.

1. Navigate to *Code* tab of the class repository.
1. Click the *branch dropdown*.
1. Enter the branch name 'github-username-caption'.
1. Press `Enter`.

When you create a new branch on GitHub, you are automatically switched to your branch. Now, any changes you make to the files in the repository will be applied to this new branch.

> **Note:** A word of caution. When you return to the repository or click the top level repository link, notice that GitHub automatically assumes you want to see the items on the default branch. If you want to continue working on a feature branch, you will need to reselect it using the branch dropdown.


### Exploring

Here are some interesting things you can check out later:

- *https://youtu.be/H5GJfcp3p4Q* A GitHub Training Video on branching.

## Local Git Configuration

In this section, we will prepare your local environment to work with Git.

### Checking Your Git Version

First, let's confirm your [Git Installation](https://git-scm.com/downloads):

```sh
$ git --version
$ git version 2.11.0
```

If you do not see a git version listed or this command returns an error, you may need to install Git.

> **Note:** To get the latest version of Git, visit www.git-scm.com.

### Git Configuration Levels

![Git Configuration Levels](book/images/config-levels.jpg)

Git allows you to set configuration options at three different levels.

#### --system
These are system-wide configurations. They apply to all users on this computer.
#### --global
These are the user level configurations. They only apply to your user account.
#### --local
These are the repository level configurations. They only apply to the specific repository where they are set.

> **Note:** The default value for git config is `--local`.

### Viewing Your Configurations

If you would like to see which config settings have been added automatically, you can type `git config --list`. This will automatically read from each of the three config files and list the setting they contain.

```sh
$ git config --list
```

You can also narrow the list to a specific configuration level by including it before the list option.

```sh
$ git config --global --list
```

### Configuring Your User Name and Email

Git uses the config settings for your user name and email address to generate a unique fingerprint for each of the commits you create. You can't create commits without these settings:

```sh
$ git config --global user.name "First Last"
$ git config --global user.email "you@email.com"
```

### Configuring autocrlf

```sh
$ //for Windows users
$ git config --global core.autocrlf true
$ //for Mac or Linux users
$ git config --global core.autocrlf input
```

Different systems handle line endings and line breaks differently. If you open a file created on another system and do not have this config option set, git will think you made changes to the file based on the way your system handles this type of file.

> Memory Tip: `autocrlf` stands for auto carriage return line feed.

## Working Locally with Git

Using the command line, you can easily integrate Git into your current workflow.

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

### Our Favorite Git command: `git status`

```sh
$ git status
On branch gh-pages
Your branch is up-to-date with 'origin/gh-pages'.
nothing to commit, working tree clean
```

`git status` is a command you will use often to verify the current state of your repository and the files it contains. Right now, we can see that we are on branch gh-pages, everything is up to date with origin/gh-pages and our working tree is clean.

### Using Branches locally

```sh
$ git branch
```

If you type `git branch` you will see a list of local branches.


> **Facilitator Note:** Show that any branches created before the repo has been cloned do not appear with `git branch`.


```sh
$ git branch --all
$ git branch -a
```

If you want to see all of the branches, including the read-only copies of your remote branches, you can add the `--all` option or just `-a`.

> **Note:** The `--all` and `-a` are actually synonyms for the branch command. Git often provides a verbose and a short option.

### Switching Branches

```
$ git checkout <BRANCH-NAME>
```

To checkout the branch you created online, type git checkout and the name of your branch. Git will provide a message that says you have been switched to the branch and it has been set up to track the same remote branch from origin.

> **Note:** You do not need to type `remotes/origin` in front of the branch - only the branch name. Typing `remotes/origin` in front of the branch name will put you in a detached HEAD state. We will learn more about that later, but for now just remember this is not a state we want to be in.

### Activity: Edit Your File

Now it is time to put an image and a caption into your file:

1. Find an image that you want to caption
1. Find your file, `named 2010-02-##-USERNAME.md`.
1. Open your file in your favorite text editor.
1. Copy and paste the image text into your file on line 6.
1. On line 7, add this text to center the file: `{: .center}`.
1. On lines 9 and 10, add code for your caption.

        ```
        CAPTION-HERE
        {: .fragment}
        ```
1. *Save* your file.

> **Note:** Git doesn't care how you work with your files locally. You can work in your favorite IDE or text editor, or you can use VIM through the command line.


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
1. Move the file from the working tree to the staging area: `git add my-file.md`
1. Let's see what happened: `git status`
1. Now let's take our first snapshot: `git commit`
1. Git will open your default text editor to request a commit message. Simply type your message on the top line of the file. Any line without a # will be included in the commit message.
1. Save and close the commit message
1. Let's take another look at our repository status: `git status`

> **Note:** Good commit messages should:
- Be short. ~50 characters is ideal.
- Describe the change introduced by the commit.
- Tell the story of how your project has evolved.

## Collaborating on Your Code

Now that you have made some changes in the project locally, let's learn how to push your changes back to the shared class repository for collaboration.

### Pushing Your Changes to GitHub

![Pushing to GitHub](book/images/push-pull.jpg)

In this case, our remote is GitHub.com, but this could also be your company's internal instance of GitHub Enterprise.

To push your changes to GitHub, you will use the command:

```sh
$ git push
```

> **Note:** When you push, you will be asked to enter your GitHub username and password. If you would like Git to remember your credentials on this computer, you can cache your credentials using:
- Windows: `git config --global credential.helper wincred`
- Mac: `git config --global credential.helper osxkeychain`

### Activity: Creating a Pull Request

Pull Requests are used to propose changes to the project files. A pull request introduces an action that addresses an Issue. A Pull Request is considered a "work in progress" until it is merged into the project.

Now that you have started to change your file, you will open a pull request to discuss the file with your team mates. Follow these steps to create a Pull Request in the class repository:

1. Click the *Pull Request* tab.
1. Click *New Pull Request*.
1. In the *base* dropdown, choose `gh-pages`
1. In the *compare* dropdown, choose your branch.
1. Type a subject line and enter a comment.
1. Use markdown formatting to add a header and a checklist to your Pull Request.
1. Include one of the keywords: `closes`, `fixes`, or `resolves` followed by the issue number you created earlier to note which Issue the Pull Request should close. Example: `This resolves #3`
1. Click *Preview* to see how your Pull Request will look.
1. Assign the Pull Request to yourself.
1. Click *Create pull request*.

> **Note:** When you navigate to the class repository, you should see a banner at the top of the page indicating you have recently pushed branches, along with a button that reads *Compare & pull request*. This helpful button will automatically start the pull request process between your branch and the repository's default branch.


### Exploring a Pull Request

Now that we have created a Pull Request, let's explore a few of the features that make Pull Requests the center of collaboration:

#### Conversation view
Similar to the discussion thread on an Issue, a Pull Request contains a discussion about the changes being made to the repository. This discussion is found in the Conversation tab and also includes a record of all of the commits made on the branch as well as assignments, labels and reviews that have been applied to the pull request.
#### Commits view
The commits view contains more detailed information about who has made changes to the files. Clicking each commit ID will allow you to see the changes applied in that specific commit.
#### Files changed view
The Files changed view allows you to see cumulative effect of all the changes made on the branch. We call this the `diff`. Our diff isn't very interesting yet, but as we make changes your diff will become very colorful.

### Code Review in Pull Requests

To provide feedback on proposed changes, GitHub offers three levels of commenting:

#### General Conversation
You can provide general comments on the Pull Request within the *Conversation* tab.
#### Line Comments
In the files changed view, you can hover over a line to see a blue `+` icon. Clicking this icon will allow you to enter a comment on a specific line. These line level comments are a great way to give additional context on recommended changes. They will also be displayed in the conversation view.
#### Review
When you are making line comments, you can also choose to *Start a Review*. When you create a review, you can group many line comments together with a general message: Comments, Approve, or Request Changes. Reviews have special power in GitHub when used in conjunction with protected branches.

### Activity: Code Review

One of the best ways to ensure code quality is to make peer reviews a part of every Pull Request. Let's review your partner's code now:

1. Click the *Pull Request* tab.
1. Use the *Author* drop down to locate your partner's pull request.
1. Click the *Files Changed* tab.
1. Hover over a single line in the file to see the blue +. Click the + to add a line comment.
1. Comment on the line and click *Start review*.
1. Repeat these steps to add 2-3 comments on the file.
1. Click *Review* in the top right corner.
1. Choose whether to *Approve* or *Request changes*
1. Enter a general comment for the review.
1. Click *Submit review*
1. Click the *Conversation* view to check out your completed review.

## Editing Files on GitHub

Since you created the pull request, you will be notified when someone adds a comment or a review. Sometimes, the reviewer will ask you to make a change to the file you just created. Let's see how GitHub makes this easy.

### Editing a File on GitHub

To edit a pull request file, you will need to access the *Files Changed* view.

1. Click the *pencil icon* in the top right corner of the diff to edit the file using the GitHub file editor.
1. Make changes to the file based on the comments from your reviewer or your personal perspective.

### Committing Changes on GitHub

Once you have made some changes to your file, you will need to create a new commit.

1. Scroll to the bottom of the page to find the *Commit changes* dialog box.
1. Type a *Commit message*.
1. Choose the option to *Commit directly to your branch*.
1. Click *Commit changes*.

### Activity: Editing Files in Pull Requests

Go back to your Pull Request and make the edits requested by your collaborators.

## Merging Pull Requests

Now that you have made the requested changes, your pull request should be ready to merge.

### Merge Explained

When you merge your branch, you are taking the content and history from your feature branch and adding it to the content and history of the `gh-pages` branch.

Many project teams have established rules about who should merge a pull request.

- Some say it should be the person who created the pull request since they will be the ones to deal with any issues resulting from the merge.
- Others say it should be a single person within the project team to ensure consistency.
- Still others say it can be anyone other than the person who created the pull request to ensure at least one review has taken place.

This is a discussion you should have with the other members of your team.

### Merging Your Pull Request

Let's take a look at how you can merge the pull request.

1. Navigate to your Pull Request (HINT: Use the Author or Assignee drop downs to find your Pull Request quickly)
1. Click *Conversation*
1. Scroll to the bottom of the Pull Request and click the *Merge pull request* button
1. Click *Confirm merge*
1. Click *Delete branch*
1. Click *Issues* and confirm your original issue has been closed

> **Note:** GitHub offers three different merge strategies for Pull Requests:
- **Create a merge commit:** This is the traditional option that will perform a standard recursive merge. A new commit will be added that shows the point when the two branches were merged together.
- **Squash and merge:** This option will take all of the commits on your branch and compress them into a single commit. The commit messages will be preserved in the extended commit message for the commit, but the individual commits will be lost.
- **Rebase and merge:** This option will take all of the commits and replay them as if they just happened. This allows GitHub to perform a fast forward merge (and avoids the addition of the merge commit).

### Updating Your Local Repository

When you merged your Pull Request, you deleted the branch on GitHub, but this will not automatically update your local copy of the repository. Let's go back to our command line application and get everything in sync.

First, we need to get the changes we made on GitHub into our local copy of the repository:

1. Start by switching back to your default branch: `git checkout gh-pages`
1. Retrieve all of the changes from GitHub: `git pull`

`git pull` is a combination command that retrieves all of the changes from GitHub and then updates the branch you are currently on to include the changes from the remote. The two separate commands being run are `git fetch` and `git merge`

### Cleaning Up the Unneeded Branches

If you type `git branch --all` you will probably see that, even though you deleted your branch on the remote, it is still listed in your local copy of the repository, both as a local branch and as a read-only remote tracking branch. Let's get rid of those extra branches.


1. Take a look at your local branches: `git branch --all`
1. Let's see which branches are safe to delete: `git branch --merged`
1. Delete the local branch: `git branch -d <branch-name>`
1. Take another look at the list: `git branch --all`
1. Your local branch is gone but the remote tracking branch is still there. Delete the remote tracking branch: `git pull --prune`


> **Note:** Adding the `--merged` option to the `git branch` command allows you to see which branches do not contain unique work when compared to the checked out branch. In this case, since we are checked out to gh-pages, we will use this command to ensure all of the changes on our feature branch have been merged to production before we delete the branch.

If you would like pruning of the remote tracking branches to be set as your default behavior when you pull, you can use the following configuration option: `git config --global fetch.prune true`.

## Viewing Local Project History

In this section, you will discover commands for viewing the history of your project.

### Using Git Log

When you clone a repository, you receive the history of all of the commits made in that repository. The log command allows us to view that history on our local machine.

Let's take a look at some of the option switches you can use to customize your view of the project history.

```sh
$ git log
$ git log --oneline
$ git log --oneline --graph
$ git log --oneline --graph --decorate
$ git log --oneline --graph --decorate --all
$ git log --stat
$ git log --patch
```

> **Note:** Use the up and down arrows or press enter to view additional log entries. Type q to quit viewing the log and return to the command prompt.

## Streamlining Your Workflow with Aliases

So far we have learned quite a few commands. Some, like the log commands, can be long and tedious to type. In this section, you will learn how to create custom shortcuts for Git commands.

### Creating Custom Aliases

An alias allows you to type a shortened command to represent a long string on the command line.

For example, let's create an alias for the log command we learned earlier.

**Original Command**
```sh
$ git log --oneline --graph --decorate --all
```

**Creating the Alias**
```sh
$ git config --global alias.lol "log --oneline --graph --decorate --all"
```

**Using the Alias**
```sh
$ git lol
```

#### Other Helpful Aliases

```sh
$ git config --global alias.co "checkout -b"
$ git config --global alias.ss "status -s"
$ git config alias.dlb '!git checkout <DEFAULT-BRANCH> && git pull --prune && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
```

#### Explore

Check out this resource for a list of common aliases:

- *git-scm.com/book/en/v2/Git-Basics-Git-Aliases* A helpful overview of some of the most common git aliases.

## Project: GitHub Games

In this section, we will work on a project repository called `github-games`.

A `github-games` repository has been created for you in the githubschool organization. You can access the repository at `https://github.com/githubschool/github-games-username`.

### Creating a Fork

1. Navigate to the repo `githubschool/github-games`.
- Click *Fork*.
- Select the account where you would like the fork to reside.

> **Note:** You may not see this step if you only have one GitHub account.

### Workflow Review: Updating the README.md

Now you will practice the GitHub Flow from beginning to end by updating the link in the README to point to your fork of the repository.

> **Note:** Remember, your copy of the website will be rendered at `https://githubschool.github.io/github-games-username`.

> This link also appears in the repository description. It is a good idea to edit the website URL in the description so you can easily access your game.

> If you click the link, you will get a 404. We have intentionally broken this repository so we can fix it together.

Since this is a review, we have written these steps at a high level. As we complete the review, we will show you a few shortcuts for the commands you learned in the previous activity:

1. Clone your copy of the repository: `git clone https://github.com/githubschool/github-games-USERNAME.git`
- Create a new branch called `readme-update`: `git checkout -b readme-update`
- Edit the URL in the README.md.
- Commit the changes to your branch.
- Push your branch to GitHub: `git push -u origin readme-update`
- Create a Pull Request *in your repository* (base: `gh-pages`, compare: `readme-update`)
- Merge your Pull Request.
- Delete the branch on GitHub.
- Update your local copy of the repository: `git pull --prune`

`git checkout -b readme-update` is a shortcut command that allows you to combine the creation of the branch (`git branch readme-update`) and checking out to that branch (`git checkout readme-update`). The `-b` tells Git to create a new branch.

> **Note:** `git push -u origin readme-update` is the slightly longer version of the push command that should be used when you push a new branch for the first time.

> The `-u` is the short version of the option `--set-upstream`. This option tells Git to create a relationship between our local branch and a remote tracking branch of the same name.

> You only need to use this long command the first time you push a new branch. After that, you can simply use `git push`.

## Resolving Merge Conflicts

When you work with a team (and even sometimes when you are working alone) you will occasionally create merge conflicts. At first, merge conflicts can be intimidating, but resolving them is actually quite easy. In this section you will learn how!

### Local Merge Conflicts

To practice merge conflicts, have made changes to the same line, in the same file, on two different branches. Let's try to merge these two branches together and see what happens:

1. Create a branch from the existing `remotes/origin/stats-update` branch: `git checkout stats-update`.
- Merge the gh-pages branch into the stats-update branch you just created: `git merge gh-pages`.

  You should receive a conflict message similar to the one shown below:

  ```sh
$ git merge gh-pages
Auto-merging index.html
CONFLICT (content): Merge conflict in index.html
Automatic merge failed; fix conflicts and then commit the result.
```

- Determine which file(s) are in conflict: `git status`.
- Open the file(s) listed under **Unmerged Paths:** in your text editor.
- Look for the merge conflict markers (shown below).

  ```sh
<<<<<<<<< HEAD
Some text
=========
Some more text
>>>>>>>>> stats-update
```

- Choose which version of the code you would like to keep.
- Delete the conflict markers.
- Save the file.
- Close the text editor.
- Check to see what git is tracking: `git status`
- Mark the file as resolved: `git add index.html`
- Complete the merge: `git commit`
- Save the default commit message.

> **Note:** What is a merge message? In this example, we are doing a recursive merge. A recursive merge creates a new commit that permanently records the point in time when these two branches were merged together. We will talk more about Git's merge strategies a little later.



> ## Facilitator Note

> The remote merge conflict in this section is **not** already set up. For this activity to work, the facilitator will need to make changes to the upstream repository during a break.

> 1. Prepare to edit the upstream remote (githubschool/github-games)
> 2. Checkout to the `shape-colors` branch
> 3. Find the `index.html` file
> 4. Change the colors on lines 115 - 121

> Make these changes before adding the remote in class. If you are going to skip the remote portion, the entire class will need to go through making changes on `shape-colors` in their own individual repositories.



## Working with Multiple Remotes

When we created our fork, we discussed the fact that a fork is a static copy of the repository at the point in time when we clicked the fork button.

In the real world, changes will continue to happen on the original project as new features are added and bugs are fixed. How can we pull these changes made to the original repository into our copy? Let's find out.

1. Add a new remote from the upstream fork: `git remote add upstream https://github.com/githubschool/github-games.git`
- Confirm your remote settings: `git remote -v`
- Pull down the remote tracking branches from the upstream fork: `git fetch upstream`
- Create a local branch called `shape-colors` based on the `shape-colors` branch in your remote fork of the repository: `git checkout -b shape-colors origin/shape-colors`
- See the difference between your branch and the upstream branch: `git diff shape-colors upstream/shape-colors`
- Merge in the changes from the upstream fork's `shape-colors` branch: `git merge upstream/shape-colors`
- Update your remote fork with your local changes: `git push`
- Create a Pull Request *in your repository*. (base: `gh-pages`, compare: `shape-colors`)

> **Note:** If you would like to keep things tidy, you can use `git remote remove upstream` once you have completed the merge. This will remove the remote and the remote tracking branches associated with it.

### Remote Merge Conflicts

When you created the Pull Request, you should have had a merge conflict. This is because the colors of the shapes had also been changed on gh-pages. Let's use the GitHub Merge Conflicts UI to solve this conflict.

1. Click *Resolve conflict*
- Use *Next* to locate the conflict.
- Decide which version of the colors you will keep.
- Delete the second set of colors and the conflict markers.
- Click *Mark as resolved*
- Click *Commit changes*

> **Note:** Some merge conflicts are too complex to be resolved using the GitHub.com UI. In these cases, the Resolve conflict button will be inactive.

> The *Command line instructions* in the merge dialog box will give you some helpful pointers for how to resolve the conflict locally. *A word of caution*, the command line instructions assume you are ready to merge and close the pull request, so only complete Step 1 of the instructions if you are still collaborating on the changes.

### Exploring

Finished and want to do more? Here are some things you can do:

- Add a new background to the game and submit it via Pull Request to githubschool.

## Searching for Events in Your Code

In this section, we will learn how we can use `git bisect` to find the commit that introduced a bug into our repository.

### What is `git bisect`?

Using a binary search, `git bisect` can help us detect specific events in our code. For example, you could use bisect to locate the commit where:

- a bug was introduced.
- a new feature was added.
- a benchmark’s performance improved.

#### How it works

`git bisect` works by cutting the history between two points in half and then checking you out to that commit. You then check whether the bug/feature exists at that point and tell Git the result. From there, Git will do another division, etc until you have located the desired commit.

> **Warning:** When you are doing a bisect, you are essentially in a detached head state. It is important to remember to end the bisect with `git bisect reset` before attempting to perform other operations with Git.

### Finding the Bug in Our Project

#### The Long Way

1. Initiate the binary search: `git bisect start`.
- Specify the commit where you noticed the code was broken: `git bisect bad <SHA>`.
- Specify the commit where you knew things were working: `git bisect good <SHA`.
- Bisect will check you out to the midpoint between good and bad.
- Run a test to see if the game would work at this point. Our test is to use `ls` to see if an `index.html` file exists.
- If the game is still broken (there *is no* `index.html` file), type: `git bisect bad`.
- If the game works (and there *is* an `index.html` file), type: `git bisect good`.
- Git will bisect again and wait for you to test. This will happen until Git has enough information to pinpoint the first bad commit.
- When Git has detected the error, it will provide a message that `SHA is the first bad commit.`
- Exit the bisect process: `git bisect reset`.

#### The Short Way

Bisect can also run the tests on your code automatically. Let's try it again using a shortcut command and a test:

1. `git bisect start <bad-SHA> <good-SHA>`
- `git bisect run ls index.html`

## Reverting Commits

In this section, we will learn about commands that re-write history and understand when you should or shouldn't use them.

### How Commits Are Made

Every commit in Git is a unique snapshot of the project at that point in time. It contains the following information:

- Pointers to the current objects in the repository
- Commit author and email (from your config settings)
- Commit date and time
- Commit message

![Git's Basic Commit Structure](book/images/commit-and-tree.png)

Each commit also contains the commit ID of its parent commit.

![Relationship between commits](book/images/commit-parent.png)

Image source: ProGit v2 by Scott Chacon

### Safe Operations

Git's data structure gives it integrity but its distributed nature also requires us to be aware of how certain operations will impact the the commits that have already been shared.

If an operation will change a commit ID that has been pushed to the remote (also known as a public commit), we must be careful in choosing the operations to perform.

#### Guidelines for Common Commands
| Command | Cautions |
| ------- | -------- |
| `revert`  | Generally safe since it creates a new commit.|
| `commit --amend` | Only use on local commits.
| `reset` | Only use on local commits.
| `cherry-pick` | Only use on local commits.
| `rebase` | Only use on local commits.

### Reverting Commits

To get your game working, you will need to reverse the commit that incorrectly renames `index.html`.

> **Warning**: Before you reverse the commit, it is a good idea to make sure you will not be inadvertently reversing other changes that were lumped into the same commit. To see what was changed in the commit, use `git show SHA`.


1. Initialize the revert: `git revert <SHA>`
- Type a commit message.
- Push your changes to GitHub.

## Helpful Git Commands

In this section, we will explore some helpful Git commands.

### Moving and Renaming Files with Git

1. Create a new branch named `slow-down`.
- On *line 9* of the index.html file, change the background url to *(images/texture.jpg)*.
- On *line 78*, change the timing for the game to speed it up or slow it down.
- Save your changes.
- See what git is tracking: `git status`
- Create a new, empty directory: `mkdir images`
- Move the texture file into the directory with git: `git mv texture.jpg images/texture.jpg`

### Staging Hunks of Changes

Crafting atomic commits is an important part of creating a readable and informative history of the project.

1. See what git is tracking: `git status`.
- Move some parts of some files to the staging area with the `--patch` flag: `git add -p`.
- Stage the hunk related to the image move: `y`
- Leave the hunk related to the speed change in the working area: `n`

> **Note:** Wondering what all of those other options are for the hunks? Use the `?` to see a list of options above the hunk.

## Viewing Local Changes

Now that you have some files in the staging area and the working directory, let's explore how you can compare different points in your repository.

### Comparing Changes within the Repository

`git diff` allows you to see allows you to see the difference between any two refs in the repository. The diagram below shows how you can compare the content of your working area, staging, and HEAD (or the most recent commit):

![Git Diff Options](book/images/diff-options.jpg)

Let's try these commands on the repository:

```sh
$ git diff
$ git diff --staged
$ git diff HEAD
$ git diff --color-words
```

`git diff` will also allow you to compare between branches, commits, and tags by simply typing:

```sh
$ git diff <REF-1> <REF-2>
$ git diff gh-pages slow-down
$ git diff origin/gh-pages gh-pages
$ git diff 2710 b745
```

> **Note:** Notice that, just like merges, diffs are directional. It is easiest to think of it as "diff back to <REF-1> starting at <REF-2>" or "see what is *not* in <REF-1> but *is* in <REF-2>".

### Initializing a New Local Repository

Let's create a local repository that we can use to practice the next set of commands.

1. Navigate to the directory where you will place your practice repo (`cd ..` to get back to the parent folder).
- Create a new directory and initialize it as a git repository: `git init practice-repo`
- CD into your new repository: `cd practice-repo`
- Create an empty new file named `README.md`: `touch README.md`
- Add and commit the README.md file.

Since we will be using this as our practice repository, we need to generate some files and commits. Here are some scripts to make this easier:

#### Bash:
```
for d in {1..6}; do touch "file${d}.md"; git add "file${d}.md"; git commit -m "adding file ${d}"; done
```

#### PowerShell:
```
for ($d=1; $d -le 6; $d++) { touch file$d.md; git add file$d.md; git commit -m "adding file$d.md"; }
```

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

## Rewriting History with Git Reset

When you want to make changes to commits further back in history, you will need to use a more powerful command: `git reset`.

### Understanding Reset

Sometimes we are working on a branch and we decide things aren't going quite like we had planned. We want to reset some, or even all, of our files to look like what they were at a different point in history.

![Git Reset Before and After](book/images/reset-visual.jpg)

Remember, there are three different snapshots of our project at any given time. The first is the most recent commit (also known as HEAD). The second is the staging area (also called the index). The third is the working directory containing any new, deleted, or modified files.

The `git reset` command has three modes, and they allow us to change some or all of these three snapshots.

It also helps to know what branches technically are: each is a pointer, or reference, to the latest commit in a line of work. As we add new commits, the currently checked-out branch "moves forward," so that it always points to the most recent commit.

### Reset Modes

![Three modes of reset](book/images/reset-modes.jpg)

The three modes for git reset are: `--soft`, `--mixed`, and `--hard`. For these examples, assume that we have a "clean" working directory, i.e. there are no uncommited changes.

#### `--soft`
`git reset --soft <SHA>` moves the current branch to point at the `<SHA>`. However, the working directory and staging area remain untouched. Since the snapshot that current branch points to now differs from the index's snapshot, this command effectively stages all differences between those snapshots. This is a good command to use when you have made a large number of small commits and you would like to regroup them into a single commit.
#### `--mixed`
`git reset --mixed <SHA>` makes the current branch *and* the staging area look like the `<SHA>` snapshot. *This is the default mode:* if you don't include a mode flag, Git will assume you want to do a `--mixed` reset. `--mixed` is useful if you want to keep all of your changes in the working directory, but change whether and how you commit those changes.
#### `--hard`
`git reset --hard <SHA>` is the most drastic option. With this, Git will make all 3 snapshots, the current branch, the staging area, *and* your working directory, look like they did at `<other-commit>`. This can be dangerous! We've assumed so far that our working directory is clean. If it is not, and you have uncommitted changes, `git reset --hard` will *delete all of those changes*. Even with a clean working directory, use `--hard` only if you're sure you want to completely undo earlier changes.

### Reset Soft

Using the practice repository we created earlier, let's try a `reset --soft`.

1. View the history of our project: `git log --oneline --decorate`
- Identify the current location of `HEAD`.
- Go back two commits in history: `git reset --soft HEAD~2`
- See the tip of our branch (and `HEAD`) is now sitting two commits earlier than it was before: `git log --oneline --decorate`
- The changes we made in the last two commits should be in the staging area: `git status`
- Re-commit these changes: `git commit -m "re-add file 5 and 6"`

> **Note:** In this example, the tilde tells git we want to reset to two commits before the current location of `HEAD`. You can also use the first few characters of the commit ID to pinpoint the location where you would like to reset.

### Reset Mixed

Next we will try the default mode of reset, `reset --mixed`:

1. Once again, we will start by viewing the history of our project: `git log --oneline`
- Go back one commit in history: `git reset HEAD~`
- See where the tip of the branch is pointing: `git log --oneline --decorate`
- The changes we made in the last commit have been moved back to the working directory: `git status`
- Move the files to the staging area before we can commit them: `git add file5.md file6.md`
- Re-commit the files: `git commit -m "re-add file 5 and 6"`


> **Note:** Notice that although we have essentially made the exact same commit (adding file 5 and 6 together with the same HEAD and commit message) we still get a new commit ID. This can help us see why the reset command should never be used on commits that have been pushed to the remote.

### Reset Hard

Last but not least, let's try a hard reset.

1. Start by viewing the history of our project with: `git log --oneline`
- Reset to the point in time where the only file that existed was the README.md: `git reset --hard <SHA>`
- See that all of the commits are gone: `git log --oneline`
- Notice your working directory is clean: `git status`
- Ssee that the only file in your repository is the README.md: `ls`

> **Warning:** Remember, `git reset --hard` overwrites your working directory, staging area, and history. This means that uncommitted changes you have made to your files will be completely lost. Don't use it unless you really want to discard your changes.

### Does Gone Really Mean Gone?

The answer: It depends!

```sh
$ git reflog
```

The reflog is a record of every place HEAD has been. In a few minutes we will see how the reflog can be helpful in allowing us to restore previously committed changes. But first, we need to be aware of some of the reflog's limitations:

- **The reflog is only local.** It is not pushed to the remote and only includes your local history. In other words, you can't see the reflog for someone else's commits and they can't see yours.
- **The reflog is a limited time offer.** By default, reachable commits are displayed in the reflog for 90 days, but unreachable commits (meaning commits that are not attached to a branch) are only displayed for 30 days.

## Getting it Back

We just learned how reflog can help us find local changes that have been discarded. So what if:

### You Just Want That One Commit

Cherry picking allows you to pick up a commit from your reflog or another branch of your project and move it to your current branch. Right now, your file directory and log should look like this:

```sh
$ ls
README.md
$ git log --oneline
84nqdkq initializing repo with README
```

Let's cherry pick the commit where we added file 4:

1. Find the commit ID where you added file4.md: `git reflog`
-  Cherry-pick that commit: `git cherry-pick <SHA>`

Now when you view your directory and log, you should see:

```sh
$ ls
file4.md
README.md
$ git log --oneline
eanu482 adding file 4
84nqdkq initializing repo with README
```

Is the commit ID the same as the one you used in the cherry pick command? Why or why not?

> **Warning:** Remember, when using any commands that change history, it's important to make these changes before pushing to GitHub. When you change a commit ID that has been pushed to the remote, you risk creating problems for your collaborators.

### Oops, I Didn't Mean to Reset

Sometimes, you `git reset --hard` a little further than intended and want to restore that work. The good news is, that `git reset --hard` doesn't just work by going back in time, it can also go forward:

1. View the history of everywhere HEAD has pointed: `git reflog`
- Reset to the point in time where the original `file6.md` was created: `git reset --hard <SHA>`
- See your restored history: `git log --oneline`

Take a look at the commit IDs in `git log --oneline` compared to `git reflog`. What do you notice?

> **Note:** Why didn't this command cause a merge conflict since we had already cherry-picked file 4. The reason is that `git reset --hard` is not trying to merge the two histories together, it is simply moving the branch to point to a new commit. In this case, this was what we wanted. In other cases, this could cause us to loose any work we may have done after the original reset.

## Merge Strategies: Rebase

In this section, we will discuss another popular merge strategy, rebasing.

### Understanding Git Merge Strategies

Git uses three primary merge strategies:

#### Fast forward
A fast forward merge assumes that no changes have been made on the base branch since the feature branch was created. This means that the branch pointer for base can simply be "fast forwarded" to point to the same commit as the feature branch.
#### Recursive
A recursive merge means that changes have been made on both the base branch and the feature branch and git needs to recursively combine them. With a recursive merge, a new "merge commit" is made to mark the point in time when the two branches came together. This merge commit is special because it has more than one parent.
#### Octopus
A merge of 3 or more branches is an octopus merge. This will also create a merge commit with multiple parents.


### About Git rebase

`git rebase` enables you to modify your commit history in a variety of ways. For example, you can use it to reorder commits, edit them, squash multiple commits into one, and much more.

To enable all of this, `rebase` comes in several forms. For today's class, we'll be using interactive rebase: `git rebase --interactive`, or `git rebase -i` for short.

Typically, you would use `git rebase -i` to:

- Replay one branch on top of another branch
- Edit previous commit messages
- Combine multiple commits into one
- Delete or revert commits that are no longer necessary

### Creating a Linear History

One of the most common uses of rebase is to eliminate recursive merges and create a more linear history. In this activity, we will learn how it is done.

![Git Rebase](book/images/git-rebase.png)

#### Set Up
1. Find the SHA of the initial commit: `git log --oneline`
1. Reset to the SHA of the initial commit: `git reset --hard SHA`
1. Create a new branch and check out to it: `git checkout -b rebase-me`
1. Cherry-pick files 4-6 onto the `rebase-me` branch using the reflog.
1. Checkout to master: `git checkout master`
1. Cherry-pick files 1-3 onto the `rebase-me` branch using the reflog.
1. Look at your history: `git log --oneline --graph --decorate --all`
1. If you merged now, it would be a recursive merge.

#### Begin the Rebase
1. Checkout to the `rebase-me` branch: `git checkout rebase-me`
1. Start the merge: `git rebase -i master`
1. Your text editor will open, allowing you to see the commits to be rebased.
1. Save and close the `rebase-todo`.
1. Watch your rebase happen on the command line.
1. Take another look at your history: `git log --oneline --graph --decorate --all`
1. If you merged now, it would be a fast-forward merge.

#### Finish the Merge
1. Checkout to master, the branch you will merge into: `git checkout master`
1. Merge your changes in to master: `git merge rebase-me`

## Appendix A: Talking About Workflows

### Discussion Guide: Team Workflows

Here are some topics you will want to discuss with your team as you establish your ideal process:

1. Which branching strategy will we use?
1. Which branch will serve as our "master" or deployed code?
1. Will we use naming conventions for our branches?
1. How will we use labels and assignees?
1. Will we use milestones?
1. Will we have required elements of Issues or Pull Requests (e.g. shipping checklists)?
1. How will we indicate sign-off on Pull Requests?
1. Who will merge pull requests?

### What is a Fork?

Instead of giving individuals collaborator access to a repository, GitHub also offers a different workflow we like to call *Fork & Pull*.

A fork is a full copy of a repository that is owned by a different user or organization account. They are easiest to understand in the context of Open Source.

If you own an open source project, you may receive hundreds of Pull Requests from contributors you have never met. It would be impractical to give all of these contributors write access to your project, so GitHub allows for a Fork & Pull workflow.

Each contributor will Fork the repository, making a copy on their user account. Since they have full access to that copy, they can make changes, test, etc.

When they are done, they can submit a Pull Request to the original repository, but they cannot merge it. Only those with write access to your repository will be able to merge the Pull Request.

> **Warning:** A fork is a static copy of the parent repository. As such, here are some best practices for working with forks:
- Treat your fork like a branch, keep your work short lived and focused.
- Once your Pull Request has been merged to the parent repository, delete your fork of the repository. If you would like to make additional changes, create a new fork.
- If you want to keep your fork around for a long period of time, set a second, upstream remote to easily manage updates (we will cover this a little later.)
