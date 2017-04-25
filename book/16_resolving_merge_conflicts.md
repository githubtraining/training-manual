## Resolving Merge Conflicts

When you work with a team (and even sometimes when you are working alone) you will occasionally create merge conflicts. At first, merge conflicts can be intimidating, but resolving them is actually quite easy. In this section you will learn how!

### Local Merge Conflicts

To practice merge conflicts, have made changes to the same line, in the same file, on two different branches. Let's try to merge these two branches together and see what happens:

1. Create a branch from the existing `remotes/origin/stats-update` branch: `git checkout stats-update`.
1. Merge the gh-pages branch into the stats-update branch you just created: `git merge gh-pages`.

  You should receive a conflict message similar to the one shown below:

  ```sh
$ git merge gh-pages
Auto-merging index.html
CONFLICT (content): Merge conflict in index.html
Automatic merge failed; fix conflicts and then commit the result.
```

1. Determine which file(s) are in conflict: `git status`.
1. Open the file(s) listed under **Unmerged Paths:** in your text editor.
1. Look for the merge conflict markers (shown below).

  ```sh
<<<<<<<<< HEAD
Some text
=========
Some more text
>>>>>>>>> stats-update
```

1. Choose which version of the code you would like to keep.
1. Delete the conflict markers.
1. Save the file.
1. Close the text editor.
1. Check to see what git is tracking: `git status`
1. Mark the file as resolved: `git add index.html`
1. Complete the merge: `git commit`
1. Save the default commit message.

> What is a merge message? In this example, we are doing a recursive merge. A recursive merge creates a new commit that permanently records the point in time when these two branches were merged together. We will talk more about Git's merge strategies a little later.

{% if context.facilitator %}
>The remote merge conflict in this section is **not** already set up. For this activity to work, the facilitator will need to make changes to the upstream repository during a break.
>
>1. Prepare to edit the upstream remote (githubschool/github-games)
>2. Checkout to the `shape-colors` branch
>3. Find the `index.html` file
>4. Change the colors on lines 115 - 121
>
>Make these changes before adding the remote in class. If you are going to skip the remote portion, the entire class will need to go through making changes on `shape-colors` in their own individual repositories.
{: .facilitator}
{% endif %}

## Working with Multiple Remotes

When we created our fork, we discussed the fact that a fork is a static copy of the repository at the point in time when we clicked the fork button.

In the real world, changes will continue to happen on the original project as new features are added and bugs are fixed. How can we pull these changes made to the original repository into our copy? Let's find out.

1. Add a new remote from the upstream fork: `git remote add upstream https://github.com/githubschool/github-games.git`
1. Confirm your remote settings: `git remote -v`
1. Pull down the remote tracking branches from the upstream fork: `git fetch upstream`
1. Create a local branch called `shape-colors` based on the `shape-colors` branch in your remote fork of the repository: `git checkout -b shape-colors origin/shape-colors`
1. See the difference between your branch and the upstream branch: `git diff shape-colors upstream/shape-colors`
1. Merge in the changes from the upstream fork's `shape-colors` branch: `git merge upstream/shape-colors`
1. Update your remote fork with your local changes: `git push`
1. Create a Pull Request *in your repository*. (base: `gh-pages`, compare: `shape-colors`)

> If you would like to keep things tidy, you can use `git remote remove upstream` once you have completed the merge. This will remove the remote and the remote tracking branches associated with it.

### Remote Merge Conflicts

When you created the Pull Request, you should have had a merge conflict. This is because the colors of the shapes had also been changed on gh-pages. Let's use the GitHub Merge Conflicts UI to solve this conflict.

1. Click *Resolve conflict*
1. Use *Next* to locate the conflict.
1. Decide which version of the colors you will keep.
1. Delete the second set of colors and the conflict markers.
1. Click *Mark as resolved*
1. Click *Commit changes*

> Some merge conflicts are too complex to be resolved using the GitHub.com UI. In these cases, the Resolve conflict button will be inactive.
>
> The *Command line instructions* in the merge dialog box will give you some helpful pointers for how to resolve the conflict locally. *A word of caution*, the command line instructions assume you are ready to merge and close the pull request, so only complete Step 1 of the instructions if you are still collaborating on the changes.

### Exploring

Finished and want to do more? Here are some things you can do:

- Add a new background to the game and submit it via Pull Request to githubschool.
