## Resolving Merge Conflicts

When you work with a team (and even sometimes when you are working alone) you will occasionally create merge conflicts. At first, merge conflicts can be intimidating, but resolving them is actually quite easy. In this section you will learn how!

### Local Merge Conflicts

Merge conflicts are a natural and minor side effect of distributed version control. They only happen under very specific circumstances.
  - Changes to the same "hunk" of the same file
  - Two different branches
  - Changes on both branches happened since the branches have diverged

### Creating a Merge Conflict

Let's try to create a merge conflict, and fix it together. You and a partner will each create separate branches, create a file with the same name, and then try to merge. The first will merge cleanly, the second will have a merge conflict. Work together to resolve the merge conflict.

1. In our class repository, create the branch that you will be working on and name it something memorable like `USERNAME-conflict`.
1. Choose a file that both you and your partner will edit. (One of your files from earlier would work well.) On your branch, edit that file. The file name must be the same file name that your partner uses. Make sure the content inside of the file is different, and that neither file is empty.
1. Create a pull request in the class repository with `base: master` and `compare: USERNAME-conflict`.
1. You will see that the _first_ pull request can merge well.
1. When you see the merge conflict in the _second_ pull request, work together to resolve the merge conflict.
    1. Working locally, merge `master` into the feature branch.
    1. When you see there's a conflict, that's OK! The files that have conflicts are listed under `Unmerged Paths`. Type `git status` to verify which file has the conflict.
    1. Open that file in your text editor, and look for the merge conflict markers. (`<<<<<<<`, `=======`, `>>>>>>>`)
    1. Both branches' versions of code are present - pick which one you want to keep, and save the changes.
    1. Add and commit the saved changes to resolve the merge conflict.
    1. Push the feature branch up to the remote, and see the resolution in the pull request.
1. Merge the pull request.


> What is a merge message? In this example, we are doing a recursive merge. A recursive merge creates a new commit that permanently records the point in time when these two branches were merged together. We will talk more about Git's merge strategies a little later.

{% if context.facilitator %}
> There are different ways to prepare these repositories. You may want to use GitHub Classroom, use a script, or have participants fork the repository. Whichever way you choose, you will need to set up the repositories for the participants before they can complete the next activity.
{: .facilitator}

{% endif %}
