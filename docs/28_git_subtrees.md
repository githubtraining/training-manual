## Git subtrees

Subtrees are a git tool for including the content of another repository as a dependency of your project. As an example, if you are working on a repository that would benefit from having the contents of another repository, subtrees might be the tool you need. Unlike submodules which require the use of a `.gitmodule` file to manage the inclusion of another repository in your repository, subtrees don't rely on external files to be managed.

### Activity: Adding a subtree

#### Setting up the empty repository for a subtree merge

1. Open your preferred command line tool.
1. Create a new directory and navigate to it.

   ```sh
   mkdir test
   cd test
   ```

1. Initialize a new Git repository.

   ```sh-session
   $ git init
   Initialized empty Git repository in /Users/octocat/tmp/test/.git/
   ```

1. Create and commit a new file.

   ```sh-session
   $ touch .gitignore
   $ git add .gitignore
   $ git commit -m "initial commit"
   [main (root-commit) 3146c2a] initial commit
    0 files changed, 0 insertions(+), 0 deletions(-)
    create mode 100644 .gitignore
   ```

#### Adding a new repository as a subtree

1. Add a new remote URL pointing to the separate project that we're interested in.

   ```sh-session
   $ git remote add -f spoon-knife git@github.com:octocat/Spoon-Knife.git
   Updating spoon-knife
   warning: no common commits
   remote: Counting objects: 1732, done.
   remote: Compressing objects: 100% (750/750), done.
   remote: Total 1732 (delta 1086), reused 1558 (delta 967)
   Receiving objects: 100% (1732/1732), 528.19 KiB | 621 KiB/s, done.
   Resolving deltas: 100% (1086/1086), done.
   From git://github.com/octocat/Spoon-Knife
    * [new branch]      main     -> Spoon-Knife/main
   ```

1. Merge the `Spoon-Knife` project into the local Git project. This doesn't change any of your files locally, but it does prepare Git for the next step.

   If you're using Git 2.9 or above:

   ```sh-session
   $ git merge -s ours --no-commit --allow-unrelated-histories spoon-knife/main
   Automatic merge went well; stopped before committing as requested
   ```

   If you're using Git 2.8 or below:

   ```sh-session
   $ git merge -s ours --no-commit spoon-knife/main
   Automatic merge went well; stopped before committing as requested
   ```

1. Create a new directory called **spoon-knife**, and copy the Git history of the `Spoon-Knife` project into it.

   ```sh
   git read-tree --prefix=spoon-knife/ -u spoon-knife/main
   ```

1. Commit the changes to keep them safe.

   ```sh-session
   $ git commit -m "Subtree merged in spoon-knife"
   [main fe0ca25] Subtree merged in spoon-knife
   ```

Although we've only added one subproject, any number of subprojects can be incorporated into a Git repository.

?> **Tip**: If you create a fresh clone of the repository in the future, the remotes you've added will not be created for you. You will have to add them again using [the `git remote add` command](https://docs.github.com/github/using-git/adding-a-remote).

#### Synchronizing with updates and changes

When a subproject is added, it is not automatically kept in sync with the upstream changes. You will need to update the subproject with the following command:

```sh
git pull -s subtree <REMOTE_NAME> <BRANCH_NAME>
```

For the example above, this would be:

```sh
git pull -s subtree spoon-knife main
```
