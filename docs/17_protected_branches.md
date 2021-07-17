## Protected Branches & CODEOWNERS

In some workflows, you will want to protect critical branches to ensure the code being merged to those branches has passed the required checks and received appropriate peer review. There are several methods for this, including **Protected Branches** and **Code Owners**.

### Protected Branches

Repository maintainers can prevent merges to specific branches that have not met pre-defined criteria. This criteria can include peer reviews, tests run by integrations such as a Continuous Integration services or code quality, or until a specific code owner has reviewed and approved changes.

Let's enable protected branches:

1. Select the **Settings** tab.
1. Select **Branches** from the menu on the left side of the screen.
1. Click the **Add rule** button next to **Branch protection rules**.
1. In the **Apply rule to** textbox type the name of the branch you would like to protect, for example, `main`.
1. Click the **Create** button.

Without checking any other options, basic branch protection prevents force-pushes and prevents it from being deleted. To learn more about the options available, check out [the documentation for this feature](https://help.github.com/articles/defining-the-mergeability-of-pull-requests/).

> Pro tip: You can use wildcards (`*`, `?`) and regular expressions to make a branch protection rule apply to multiple branches.  Check out the [branch protection documentation](https://help.github.com/en/articles/configuring-protected-branches) for more information on how wildcards and regular expression matching work.

### CODEOWNERS

Repository maintainers can define exactly which people and teams need to review sets of changes by creating a **CODEOWNERS** file. For example, you could use CODEOWNERS to ensure:

- your team's Javascript expert reviews all files with a `.js` extension
- your technical documentation team reviews all changes in the `docs/` folder
- your security team reviews any new dependencies listed in the `package.json` file

Let's create a CODEOWNERS file:

1. Go out to the **Code** tab of your repository.
1. Click the **Create new file** button.
1. In the **Name your file...** textbox enter `CODEOWNERS` (no extension necessary). You can add this to a `.github/` directory if desired by entering `.github/CODEOWNERS`.
1. On the first line, type `*          @YOUR_USERNAME`
   - This means that you will be the default owner for everything in the repo, unless a later match takes preference.
1. On the next line, type `*.js       @GITHUBTEACHER`
   - Order is important. The last matching pattern for a given change takes precedence.
1. Scroll down, and type a commit message into the **Commit new file** dialog box.
1. Click the **Commit new file** button to save your changes.
1. Now that you have created a CODEOWNERS file, go back to your branch protection settings and click the **Edit** button next to `main`.
1. Under **Rule settings**, select the option to **Require pull request reviews before merging** and **Require review from Code Owners**. Remember to click **Save changes**.

For more information on how to format the CODEOWNERS file, check out [the documentation](https://help.github.com/articles/about-codeowners/)
