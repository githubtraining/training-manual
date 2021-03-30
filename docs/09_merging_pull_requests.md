## Merging Pull Requests

Now that you have made the requested changes, your pull request should be ready to merge.

### Merge Explained

When you merge your branch, you are taking the content and history from your feature branch and adding it to the content and history of the `main` branch.

![Merging Pull Requests](./img/merging-prs.png)

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

> GitHub offers three different merge strategies for Pull Requests:

- **Create a merge commit:** This is the traditional option that will perform a standard recursive merge. A new commit will be added that shows the point when the two branches were merged together.
- **Squash and merge:** This option will take all of the commits on your branch and compress them into a single commit. The commit messages will be preserved in the extended commit message for the commit, but the individual commits will be lost.
- **Rebase and merge:** This option will take all of the commits and replay them as if they just happened. This allows GitHub to perform a fast forward merge (and avoids the addition of the merge commit).

### Updating Your Local Repository

When you merged your Pull Request, you deleted the branch on GitHub, but this will not automatically update your local copy of the repository. Let's go back to our command line application and get everything in sync.

First, we need to get the changes we made on GitHub into our local copy of the repository:

1. Start by switching back to your default branch: `git switch main`
1. Retrieve all of the changes from GitHub: `git pull`

`git pull` is a combination command that retrieves all of the changes from GitHub and then updates the branch you are currently on to include the changes from the remote. The two separate commands being run are `git fetch` and `git merge`

### Cleaning Up the Unneeded Branches

If you type `git branch --all` you will probably see that, even though you deleted your branch on the remote, it is still listed in your local copy of the repository, both as a local branch and as a read-only remote tracking branch. Let's get rid of those extra branches.

1. Take a look at your local branches: `git branch --all`
1. Let's see which branches are safe to delete: `git branch --merged`
1. Delete the local branch: `git branch -d <branch-name>`
1. Take another look at the list: `git branch --all`
1. Your local branch is gone but the remote tracking branch is still there. Delete the remote tracking branch: `git pull --prune`

> Adding the `--merged` option to the `git branch` command allows you to see which branches do not contain unique work when compared to the checked out branch. In this case, since we are checked out to main, we will use this command to ensure all of the changes on our feature branch have been merged to production before we delete the branch.

If you would like pruning of the remote tracking branches to be set as your default behavior when you pull, you can use the following configuration option: `git config --global fetch.prune true`.
