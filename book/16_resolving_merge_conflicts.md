## Resolving Merge Conflicts

When you work with a team (and even sometimes when you are working alone) you will occasionally create merge conflicts. At first, merge conflicts can be intimidating, but resolving them is actually quite easy. In this section you will learn how!

### Local Merge Conflicts

To practice merge conflicts, have made changes to the same line, in the same file, on two different branches. Let's try to merge these two branches together and see what happens:

1. Create a branch from the existing `remotes/origin/stats-update` branch: `git checkout stats-update`.
- Merge the gh-pages branch into the stats-update branch you just created: `git merge gh-pages`.

  You should receive a conflict message similar to the one shown below:

  ```sh
$ git merge gh-pages
Auto-merging index.html
CONFLICT (content): Merge conflict in index.html
Automatic merge failed; fix conflicts and then commit the result.
```

- Determine which file(s) are in conflict: `git status`.
- Open the file(s) listed under **Unmerged Paths:** in your text editor.
- Look for the merge conflict markers (shown below).

  ```sh
<<<<<<<<< HEAD
Some text
=========
Some more text
>>>>>>>>> stats-update
```

- Choose which version of the code you would like to keep.
- Delete the conflict markers.
- Save the file.
- Close the text editor.
- Check to see what git is tracking: `git status`
- Mark the file as resolved: `git add index.html`
- Complete the merge: `git commit`
- Save the default commit message.

> **Note:** What is a merge message? In this example, we are doing a recursive merge. A recursive merge creates a new commit that permanently records the point in time when these two branches were merged together. We will talk more about Git's merge strategies a little later.

{% if context.facilitator %}

> ## Facilitator Note

> To set up these class merge conflict repositories, ________

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

Don't remember the steps from class? No worries. As a general rule of thumb, here is a starting point:
1. Working locally, merge `master` into the feature branch.
1. When you see there's a conflict, that's OK! Type `git status` to verify which file has the conflict.
1. Open that file in your text editor, and look for the merge conflict markers. (`<<<<<<<`, `=======`, `>>>>>>>`)
1. Both branches' versions of code are present - pick which one you want to keep, and save the changes.
1. Add and commit the saved changes to resolve the merge conflict.
1. Push the feature branch up to the remote, and see the resolution in the pull request.
