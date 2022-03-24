### Resolving a merge conflict

Let's try to create a merge conflict, and fix it together. You and a partner will each create separate branches, create a file with the same name, and then try to merge. The first will merge cleanly, the second will have a merge conflict. Work together to resolve the merge conflict.

1. In our class repository, create the branch that you will be working on and name it something memorable like `USERNAME-conflict`.
1. Choose a file that both you and your partner will edit. (One of your files from earlier would work well.) On your branch, edit that file. The filename must be the same filename that your partner uses. Make sure the content inside the file is different, and that neither file is empty.
1. Create a pull request in the class repository with `base: main` and `compare: USERNAME-conflict`.
1. You will see that the _first_ pull request can merge well.
1. When you see the merge conflict in the _second_ pull request, work together to resolve the merge conflict.
    1. Working locally, merge `main` into the feature branch.
    1. When you see there's a conflict, that's OK! The files that have conflicts are listed under `Unmerged Paths`. Type `git status` to verify which file has the conflict.
    1. Open that file in your text editor, and look for the merge conflict markers. (`<<<<<<<`, `=======`, `>>>>>>>`)
    1. Both branches' versions of code are present - pick which one you want to keep, and save the changes.
    1. Add and commit the saved changes to resolve the merge conflict.
    1. Push the feature branch up to the remote, and see the resolution in the pull request.
1. Merge the pull request.

### Resolving a Merge Conflict (practice alone)

If it's difficult to practice with a partner, you can do that by alone by following below.

1. In our class repository, confirm the branch you are in is `main`.
1. Create a branch and name it as `USERNAME-modify-first`.
1. In the `USERNAME-modify-first` branch, edit your caption on line 6 of your slide file `_slides/##-USERNAME.md` and commit it.
1. **Change the branch to `main` again**, create a second branch and name it as `USERNAME-modify-conflict`.
1. In the `USERNAME-modify-conflict` branch, edit your caption with different string on the same position as the previous step (line 6 of `_slides/##-USERNAME.md`) and commit it.
   - Make sure the content inside of the file is different, and that neither file is empty.
1. Create a pull request in the class repository with `base: main` and `compare: USERNAME-modify-first`. (title: `USERNAME merge first`)
1. Create a pull request in the class repository with `base: main` and `compare: USERNAME-modify-conflict`. (title: `USERNAME resolve conflict`)
1. You will see that the _first_ pull request titled `USERNAME merge first` can merge well.
1. When you see the merge conflict in the _second_ pull request titled `USERNAME resolve conflict`, work by yourself to resolve the merge conflict.
   1. Working locally, switch to `main` branch and pull updates from remote.

      ```sh
      git switch main
      git pull
      ```

   1. Fetch the `USERNAME-modify-conflict` branch from remote and switch to the same branch locally.

      ```sh
      git fetch
      git switch USER-modify-conflict
      ```

   1. Merge `main` into the feature branch.

      ```sh
      git merge main
      ```

   1. When you see there's a conflict, that's OK! The files that have conflicts are listed under `Unmerged Paths`. Type `git status` to verify which file has the conflict.

      ```sh
      git status
      ```

   1. Open that file in your text editor, and look for the merge conflict markers. (`<<<<<<<`, `=======`, `>>>>>>>`)

      ```sh
      # Open the file on Visual Studio Code
      code _slides/##-USERNAME.md
      ```

   1. Both branches' versions of code are present - pick which one you want to keep, and save the changes.
   1. Add and commit the saved changes to resolve the merge conflict.

      ```sh
      git add _slides/##-USERNAME.md
      git commit
      ```

   1. Push the feature branch up to the remote, and see the resolution in the pull request.

      ```sh
      git push
      ```

1. Confirm that the merge conflict in the branch titled `USERNAME resolve conflict` was resolved and merge the pull request.

> What is a merge message? In this example, we are doing a recursive merge. A recursive merge creates a new commit that permanently records the point in time when these two branches were merged together. We will talk more about Git merge strategies a little later.
