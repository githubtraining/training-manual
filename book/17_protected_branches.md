In some workflows, you will want to protect critical branches to ensure the code being merged to those branches has passed the required checks and received appropriate peer review. There are several methods for this, including **Protected Branches** and **Code Owners**.

### Protected Branches

Repository maintainers can prevent merges to specific branches that have not met pre-defined criteria. This criteria can include peer reviews, tests run by integrations such as a Continuous Integration services or code quality, or until a specific code owner has reviewed and approved changes.  

Let's enable protected branches:

1. Select the **Settings** tab.
1. Select **Branches** from the menu on the left side of the screen.
1. Click the **Choose a branch...** dropdown and select the branch you would like to protect, for example, `master`.
1. Check the **Protect this branch** option. 

Without checking any other options, basic branch protection prevents force-pushes and prevents it from being deleted. To learn more about the options available, check out [the documentation for this feature](https://help.github.com/articles/defining-the-mergeability-of-pull-requests/).


### CODEOWNERS

Repository maintainers can define exactly which people and teams need to review sets of changes by creating a **CODEOWNERS** file. For example, you could use CODEOWNERS to ensure:

- your team's Javascript expert reviews all files with a `.js` extension
- your technical documentation team reviews all changes in the `docs/` folder 
- your security team reviews any new dependencies listed in the `package.json` file

Let's create a CODEOWNERS file and step through each option:

1. Create a new file in your repository titled `CODEOWNERS` (no extension necessary). You can add this to a `.github/` directory if desired.
1. On the first line, type `*          @YOUR_USERNAME`
  - This means that you will be the default owner for everything in the repo, unless a later match takes preference.
1. On the next line, type `*.js       @githubteacher`
  - Order is important. The last matching pattern for a given change takes precedence.
1. Now that you have created a CODEOWNERS file, go back to your branch protection settings and select the option to **Require pull request reviews before merging** and **Require review from Code Owners**. Remember to click **Save changes**.

For more information on how to format the CODEOWNERS file, check out [the documentation](https://help.github.com/articles/about-codeowners/)
