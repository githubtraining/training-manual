## Fostering a participative culture

Your project's presence on GitHub signals to others that you're invested in its success and that as a result they, too, can contribute to that success. Simply having your project on GitHub isn't the only way to promote collaboration, GitHub features multiple ways to reduce the "onboarding" for your repository. Even in enterprise situations, providing input on another team's repository can seem like a daunting task for veteran and first-day employees, so, use the power of GitHub to throw down a welcome mat and increase cross-team collaboration.

One of the features of GitHub is the ability to include issue and pull request templates. These enable contributors to provide the information _you_ identified that you need when they create a new issue or pull request on the project. To get a better sense of what a contributor would see when creating a new issue, check out these examples:

In this first example, the development team hasn't implemented an issue template on their repository, so when a potential (or existing) contributor open an issue they are greeted with this blank canvas:

![a blank issue](https://user-images.githubusercontent.com/16547949/43394789-ea32bb26-93c9-11e8-9aee-65ce8b205a04.gif)

While a blank canvas can be great in an artistic sense, it creates deficiencies in the issue and pull request process. If you don't provide guidelines that your team needs, you lose clarity and needlessly increase context-seeking communication. For example, when someone reports a bug, you might want them to include their operating system, the version of the application, or other environment variables that will help you pinpoint the problem. For new feature requests, you might need the issue author to identify specific use case information that they may or may not describe when starting from scratch.

In this next example, a team was frustrated by the inconsistent way contributors were reporting bugs and requesting features, so they created issue templates. The most important effect these templates have is it improves the consistency in which the the team receives the information they **need**.

With an issue template, you take emptiness out of the equation and guide your users towards the kind of participation you're looking for.

![issue-template](https://user-images.githubusercontent.com/16547949/43394981-7ad62bea-93ca-11e8-9e65-c6a107611895.gif)

### Group activity: make an issue template

GitHub supports multiple issue templates, so within our groups we are going to create a `bug`, `issue`, and `custom` template for issues created in our repository. While creating these issue templates, it is important to remember the GitHub Flow, so the template should be created on a branch, submitted as a pull request to receive feedback from the team, and merged into the `main` branch.

Before creating the template, it might be helpful to find existing issue templates on other open source projects on GitHub to get some inspiration. Below are some of examples of issue templates found on GitHub:

- [Atom](https://github.com/atom/atom/issues/new/choose)
- [Electron](https://github.com/electron/electron/issues/new/choose)
- [VisualStudio](https://github.com/github/VisualStudio/issues/new/choose)
- [Training Kit](https://github.com/github/training-kit/blob/master/.github/ISSUE_TEMPLATE.md)

To create an issue template, perform the following:

1. On GitHub, navigate to the main page of the repository
1. Under the repository name, click the **Settings** tab
1. In the "Features" section, under "Issues," click the green **Set up templates** button
1. Use the Add template drop-down menu to select the type of template you'd like to create
1. To preview or edit the template before committing it to the repository, click **Preview and edit**
1. To edit the template, click the pencil icon located next to the issue name, and type in the fields to edit their contents
1. When you're finished editing and previewing your template, click **Propose changes** in the upper right corner of the page
1. Enter a commit message describing your changes
1. Below the commit message fields, decide whether to commit your template directly to the default branch, or to create a new branch and open a pull request. For more information about pull requests, see "About pull requests."
1. Click **Commit changes**. Once these changes are merged into the default branch, the template will be available for contributors to use when they open new issues in this repository

Share and receive feedback on the issue template from other class participants via a pull request.

[Source](https://help.github.com/articles/creating-issue-templates-for-your-repository/)

### More collaboration tools

Issue and pull request templates were mentioned as ways to improve the experience contributors have in your repository, but there are other GitHub features that can be helpful as well.

- **Labels** are a visual way to categorize issues and pull requests in the repository. A repository will come equipped with a handful of default labels out of the box, but new ones can be created (and deleted) as needed to better organize your repository.
- **Contributing** provides an easily accessible description of how someone should contribute to a repository. This document is automatically linked to when an issue or pull request is opened.
- **License** are _very_ important when a user considers open sourcing a project, although most internal projects might not need a license applied to them.

### Individual activity: Repository labels

In the `answer-this` repository, create a new label that can be applied to existing or future issues and pull requests. Some examples of labels that could be helpful include:

- documentation needed
- beginners welcome
- specific release versions
- escalated items

To create a label, perform the following:

1. From the **Issues** or **Pull requests** tab, click **Labels**
1. Click **New label**
1. Enter a **Label name**, **Description**, and **Color** for your new label
1. Click **Create label**
