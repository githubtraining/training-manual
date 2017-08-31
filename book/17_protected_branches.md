In some workflows, it might be valuable to set up protections to avoid accidental mistakes and/or risky shortcuts. There are several methods for this, including **Protected Branches** and **Code Owners**.

### Protected Branches


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
