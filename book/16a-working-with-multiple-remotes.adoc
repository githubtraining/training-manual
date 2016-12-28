[[_multiple_remotes]]
## Working with Multiple Remotes

When we created our fork, we discussed the fact that a fork is a static copy of the repository at the point in time when we clicked the fork button.

In the real world, changes will continue to happen on the original project as new features are added and bugs are fixed. How can we pull these changes made to the original repository into our copy? Let's find out.

.Activity Instructions
. Add a new remote from the upstream fork: `git remote add upstream https://github.com/githubschool/github-games.git`
. Confirm your remote settings: `git remote -v`
. Pull down the remote tracking branches from the upstream fork: `git fetch upstream`
. Create a local branch called `shape-colors` based on the `shape-colors` branch in your remote fork of the repository: `git checkout -b shape-colors origin/shape-colors`
. See the difference between your branch and the upstream branch: `git diff shape-colors upstream/shape-colors`
. Merge in the changes from the upstream fork's `shape-colors` branch: `git merge upstream/shape-colors`
. Update your remote fork with your local changes: `git push`
. Create a Pull Request in your repository.

[NOTE]
====
If you would like to keep things tidy, you can use `git remote remove upstream` once you have completed the merge. This will remove the remote and the remote tracking branches associated with it.
====
