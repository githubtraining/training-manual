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
1. On your branch, create a new file. The file name must be the same file name that your partner uses. Make sure the content inside of the file is different.
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


> **Note:** What is a merge message? In this example, we are doing a recursive merge. A recursive merge creates a new commit that permanently records the point in time when these two branches were merged together. We will talk more about Git's merge strategies a little later.

{% if context.facilitator %}

## Facilitator Note

To set up these class merge conflict repositories, run the ____ script. If you do not have access to the script, instruct participants to fork the repository from `githubschool/github-games` instead.
{: note}

{% endif %}

## Merge Conflict Practice

Depending on how you're interacting with this manual, you may be in a class. The instructor may have set up a repository for you to practice merge conflicts. If this is the case:
- _Every person_ has their own repository. Each person should fix the merge conflicts in their own repo. It will be called `github.com/githubschool/conflict-practice-username`, with username being your actual username.
- We won't make you turn in your homework, but we will run a script to see if the activities are completed later. :wink:

### Work to resolve the merge conflicts in the conflicts repository.
1. Find your repository. It will be at `github.com/githubschool/USERNAME`, where your username is replacing the word USERNAME.
1. In your repository, navigate to the **Pull Requests** tab.
1. There are three open pull requests, and all of them have merge conflicts to fix. We recommend fixing them in this order:
  - Update README
  - Updates to game manual
  - Minor CSS fixes
1. View the pull request, and follow the steps to resolve the merge conflicts. When the merge conflict is resolved, merge the pull request.
