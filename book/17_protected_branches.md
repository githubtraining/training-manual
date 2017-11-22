In some workflows, you will want to protect critical branches to ensure the code being merged to those branches has passed the required checks and received appropriate peer review. There are several methods for this, including **Protected Branches** and **Code Owners**.

### Protected Branches
Repository maintainers can secure specific branches in their repository from being merged into unless the specified criteria is met. This criteria can include requiring peer reviews, status checks from integrations from popular Continuous Integrations tools and other services, or until a specific **code owner** has approved changes to specific files. 

   > A repository can have up to 100 protected branches. 

Let's enable protected branches and identify the different options available to you:

1. Select the **Settings** tab.
1. Select **Branches** from the menu on the left side of the screen.
1. Click the **Choose a branch...** dropdown and select the branch you would like to protect, for example, `master`.
1. Check the **Protect this branch** option. This will enable specific ways you would like to protect the selected branch.
    - Without checking any other options, the selected branch prevents force-pushes and prevents it from being deleted. To require additional steps before a branch can be mergd into the newly protected branch, continue following these steps.
1. Click the **Require pull request reviews before merging** if you want to require other collaborators on the project to approve the pull request before it can be merged into the protected branch. This requirement can be further enhanced by dismissing previous approvals after additional commits have been pushed (**Dismiss stale pull request approvals when new commits are pushed**) or you want to require the approval from specified code owners (**Require review from Code Owners**).
1. Check the **Require status checks to pass before merging** to require status checks or tests to pass before a branch can be merged into the protected branch. A status check may include an integration such as continuous integration, automated code review, or other GitHub integrations available on the GitHub Marketplace.


### Code Owners
Repository maintainers can define exactly which people and teams need to review projects by creating a code owners file.

This feature automatically requests reviews from the code owners when a pull request changes any owned files.

Let's format a code owners file and step through each option:

1. Create a new file in your repository titled `CODEOWNERS` (no extension necessary).
1. On line one, type `# GLOBAL OWNER`
  - The # means that this is a comment. We'll use these to separate our file to demonstrate the multiple features.
1. On line two, type `*          @YOUR_USERNAME`
  - This means that you will be the default owner for everything in the repo, unless a later match takes preference.
  - The number of spaces between the asterisk and your name is arbitrary.
1. On line three, type `# Specificity`
1. On line four, type `*.md       @githubteacher`
  - Order is important, and the last matching pattern takes the most precedence.
  - When someone opens a PR that only modifies markdown files, `githubteacher` would be requested for a review, not you.
