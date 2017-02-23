### Merging Your Pull Request

Let's take a look at how you can merge the pull request.

.Activity Instructions
. Navigate to your Pull Request (HINT: Use the Author or Assignee drop downs to find your Pull Request quickly)
. Click *Conversation*
. Scroll to the bottom of the Pull Request and click the *Merge pull request* button
. Click *Confirm merge*
. Click *Delete branch*
. Click *Issues* and confirm your original issue has been closed

[NOTE]
====
GitHub offers three different merge strategies for Pull Requests:

- *Create a merge commit:* This is the traditional option that will perform a standard recursive merge. A new commit will be added that shows the point when the two branches were merged together.
- *Squash and merge:* This option will take all of the commits on your branch and compress them into a single commit. The commit messages will be preserved in the extended commit message for the commit, but the individual commits will be lost.
- *Rebase and merge:* This option will take all of the commits and replay them as if they just happened. This allows GitHub to perform a fast forward merge (and avoids the addition of the merge commit).
====
