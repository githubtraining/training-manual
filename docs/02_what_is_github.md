### What is GitHub Enterprise?

GitHub Enterprise is a collaboration platform built on top of a distributed version control system called Git. GitHub Enterprise is focused on developers, the people who code and create software. Our focus is also the people who partner with and employ developers, who are encouraging them to build amazing things.  GitHub Enterprise is similar to the public GitHub site except that it's an internally-hosted application which means that all the data stays within our internal UHG network.

We do all we can to help unlock the creativity of developers and to foster a community of developers that can come together—as individuals and in teams—to create the future of software and make a difference in the world.

GitHub Enterprise concentrates on three things:

- Building a technology platform that is like no other, on which developers can create, share and grow the best code possible
- Nurturing a community for developers; a safe and collaborative place that facilitates sharing, amplifies creativity, and supports the principles of open source
- Providing access, opening up a community of opportunity, where new developers can be born and where experienced developers can hone their skills and expand their knowledge

![GitHub's beloved Octocat logo](./img/github-icon.jpg)

In addition to being a place to host and share your Git projects, GitHub Enterprise provides a number of features to help you and your team collaborate more effectively. These features include:

* Issues
* Pull Requests
* Projects
* Organizations and Teams

![GitHub Collaboration Features](./img/collaboration-features.png)

### Exploring a GitHub Enterprise Repository

A repository is the most basic element of GitHub Enterprise. It is easiest to imagine as a project's folder. However, unlike an ordinary folder on your laptop, a GitHub Enterprise repository offers simple yet powerful tools for collaborating with others.

A repository contains all of the project files (including documentation), and stores each file's revision history. Whether you are just curious or you are a major contributor, knowing your way around a repository is essential!

![GitHub Repositories](./img/repository-intro.png)

### User Accounts vs. Organization Accounts

There are two account types in GitHub Enterprise, user accounts and organization accounts. While there are many differences in these account types, one of the more notable differences is how you handle permissions.

#### User Accounts
When you signed up for GitHub Enterprise, you were automatically given a user account. Permissions for a user account are simple, you add people as collaborators to specific repositories to give them full read-write access to the project.
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
Wikis in GitHub Enterprise can be used to communicate project details, display user documentation, or almost anything your heart desires. And of course, GitHub Enterprise helps you keep track of the edits to your Wiki!
#### Pulse
Pulse is your project's dash board. It contains information on the work that has been completed and the work in progress.
#### Graphs
Graphs provide a more granular view into the repository activity, including who has contributed, when the work is being done, and who has forked the repository.
#### README.md
The README.md is a special file that we recommend all repositories contain. GitHub Enterprise looks for this file and helpfully displays it below the repository. The README should explain the project and point readers to helpful information within the project.
#### CONTRIBUTING.md
The CONTRIBUTING.md is another special file that is used to describe the process for collaborating on the repository. The link to the CONTRIBUTING.md file is shown when a user attempts to create a new issue or pull request.
#### ISSUE_TEMPLATE.md
The ISSUE_TEMPLATE.md (and its twin the pull request template) are used to generate templated starter text for your project issues. Any time someone opens an issue, the content in the template will be pre-populated in the issue body.


### Using GitHub Enterprise Issues

In GitHub Enterprise, you will use issues to record and discuss ideas, enhancements, tasks, and bugs. Issues make collaboration easier by:

- Replacing email for project discussions, ensuring everyone on the team has the complete story, both now and in the future.
- Allowing you to cross-link to related issues and pull requests.
- Creating a single, comprehensive record of how and why you made certain decisions.
- Allowing you to easily pull the right people into a conversation with @ mentions and team mentions.

[include](02a_activity_create_github_issue.md ':include')

### Using Markdown

GitHub Enterprise uses a syntax called **Markdown** to help you add basic text formatting to Issues, Pull Requests, and files with the `.md` extension.

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

### Introduction to GitHub Pages

GitHub Pages enable you to host free, static web pages directly from your GitHub Enterprise repositories. Several of the projects we use in class will use GitHub Pages as the deployment strategy. We will barely scratch the surface in this class, but there are a few things you need to know:

- You can create two types of websites, a user/organization site or a project site. We will be working with project websites.
- For a project site, GitHub Enterprise will only serve the content on a specific branch. Depending on the settings for your repository, GitHub Enterprise can serve your site from a `master` or `gh-pages` branch, or a `/docs` folder on the `master` branch.
- The rendered sites for our projects will appear at `https://github.optum.com/pages/GHE-Training/repo-name`.
