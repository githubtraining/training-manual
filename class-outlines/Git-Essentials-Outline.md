# Git Essentials

This guide is intended to provide a cliff notes style overview of the Git Essentials course.

## Beginning with the End

- **DEMO** The basic Git Workflow
  - **Instructor Notes:** This meant to be a very quick demo of how easy it is to use Git. It is the beautiful soufflé we pull out of the oven to show the end result.
  - **Prep:** You will need:
    - a gh-pages ready repository locally on your machine (remember to add a README.md so it will look pretty on GitHub).
    - a matching repo on GitHub ready for the first push!
  - This is a game I have been working on - I want to push it to a remote so a few of my friends can help me finish it:
    - `git push -u origin gh-pages`
  - Show the game on GitHub pages.
  - Let's see how easy it is for our friends to make changes and send them back. First they will clone the repo to their local machine. Then they will:
    - `git checkout -b new-feature`
    - `atom index.html`
    - `git add index.html`
    - `git commit -m "adding new feature to index"`
    - `git push -u origin new-feature`
  - Now I can pull down their changes and take a look:
    - `git fetch`
    - `git branch --all`
    - `git diff gh-pages origin/new-feature`
    - `git checkout gh-pages` - you only need this because you are playing both parts
    - `git merge origin/new-feature`
    - `git push`
  - Show the change in the game on GitHub Pages!

### What is Git?

- Git is a free and open source distributed version control system designed to handle everything from small to very large projects with speed and efficiency.
- Git is easy to learn and has a tiny footprint with lightning fast performance. It outclasses SCM tools like Subversion, CVS, Perforce, and ClearCase with features like cheap local branching, convenient staging areas, and multiple workflows.

## Git by Yourself

- We will start with how to work locally in Git.

### Getting Ready to Work in Git

- Installing Git
  - Check `git --version`
- Configuring Git
  - Git Configuration Levels (`--system`, `--global`, `--local`)
- **ACTIVITY:** Set basic config
    - `git config --list`
    - `user.name`
    - `user.email`
    - `core.editor` **optional**
    - `core.autocrlf`
    - `push.default`
    - `git config --global --list`

### Your First Repository

- Creating A Git Repository
  - `git init <repo-name>`
  - `cd <repo-name>`
  - What just happened?
  - What exactly is a git repository?
    - Intro the `.git` folder
- Add a file
 - **DEMO:** Create a `README.md`
 - **LAB:** Learner creates a `README.md`

### The Two Stage Commit

 - Explain the three trees in Git (Working, Staging, History)
 - Explain the two stage commit
 - **DEMO:** Commit the changes
   - Use status to show file moving between stages
 - **LAB:** Learner adds and commits file

### Understanding Git's Branch Based Workflow

- Understanding Branches
  - What is a branch?
  - What is master?
  - When and why should you create a new branch, even when you are working alone?
  - What happens when you create a branch?
  - Branching is a cheap, local operation in Git, and contrast that with older VCSs
  - When you are finished, you will `merge` the branch you created back in to master.

- Creating a Branch
  - **DEMO:** Creating a Branch
    - `git branch first-page`
    - `git checkout first-page`
  - **LAB:** Learners create their own branch.
  - **LAB:** Learners add `index.html` with `Hello World`.
    - Show `git status`
    - Show `git add index.html`
    - Show `git commit -m`

- Merging Your Branch
  - **DEMO:** Merge the `first-page` branch into master.
  - **LAB:** Learners merge the `first-page` branch into master.

- Deleting Your Branch
  - **DEMO:** Delete the first page branch.
    - `git branch --merged`
    - `git branch -d first-page`
  - **LAB:** Learners delete the first-page branch.   

## Git with Others

- **Instructor Notes:** We will use GitHub only as a remote, to show how one can use a Git server to collaborate.

### Project 1: Adding a File to a Shared Repository

- **Prep:** You will need:
 - A fairly mature and realistic project repository on GitHub.
 - To add the students in the class as collaborators on the repository.

#### Cloning a Repository

  - Why we clone
  - **DEMO:** Clone the repository
    - Navigate to the location on disc where you would like to clone the repo
    - `git clone <URL>`
    - `cd <repo-name>`
  - **LAB:** Learner clones the repo.

#### Exploring the Repository

  - `git status`
  - `git branch`
  - `git branch --all`

#### Workflow Review: Putting it all together

  - The branch name and file added may be modified slightly based on the repo used in Project 1a.
  - `git checkout -b <user>-hometown`
  - `atom <home-town>.md`
  - `git status`
  - `git add -A`
  - `git commit -m`

#### Pushing Changes

  - Explain push and setting upstream relationship
  - **DEMO:** Push changes setting -u
  - **LAB:** Learner pushes changes

#### Keeping Your Local repo in Sync

  - `git checkout master`
  - `git pull`
  - `git branch --all` - show the added remote tracking branches
  - If we want to do work or make changes to a branch that exists on the remote, we need to use the following:
  - `git checkout -b <someones-branch> origin/<someones-branch>`
  - Alternatively, we could just use a diff to see the changes:
  - `git diff origin/<someones-branch> master`  

#### Viewing Project History

  - **DEMO + ACTIVITY:** Show basic log and additive options
    - `git log`
    - `git log --oneline`
    - `git log --oneline --graph`
    - `git log --oneline --graph --decorate`
    - `git log --oneline --graph --decorate --all`
    - `git log --stat`
    - `git log --patch`
    - `git log --stat origin/<someones-branch>..master`
- Creating Aliases (done as an aside based on the long log command above.)
  - **DEMO:** Create aliases
    - `git config --global alias.lol \"log --oneline --graph --decorate --all\"`
    - Show `git lol`
  - **LAB:** learner creates their own alias
#### Cleaning Up Branches in Your Local repo

- Earlier you learned how to delete your local branches, but how do you remove the branches on the remote and clean up the remote tracking branches stored locally?
  - `git push origin --delete <branch-name>` will delete the specified branch on the remote.
  - `git fetch --prune` will delete any local tracking branches where the associated branch has been deleted on the remote.
  - If you would like git to automatically pruning the remote tracking branches each time you fetch or pull, set the following:
    - `git config --global fetch.prune true`

### Project 2: Fixing Common Problems

- **Prep:** You will need:
 - The github-games repository
 - In this project, we will not add the learners as collaborators. Instead, we will teach them how to work with multiple remotes to pull changes from one another's repo. Along the way, we will teach them additional helpful git commands.

#### Workflow Review

 - **ACTIVITY:** Learner will:
  - Clone `github-games` repo
   - **DEMO:** Modify file before creating branch
    - Change the `README.md` to point to the learner's version of the game.
    - Oops, I forgot to create a branch
    - `git checkout -b readme-updates` - show that the file remains in the working directory
    - Commit the file to the branch
  - Merge the branch into gh-pages

#### Merge Types

- Discuss the difference between a fast-forward and a recursive merge!

#### Working with Multiple remotes

- **DEMO + ACTIVITY:** Set the remote for the learner's copy of the repo.
  - `git remote -v`
  - By convention, the `git clone` command will create a remote named `origin` for your repository. It will point to the original remote repository.
  - Create a new repo on GitHub (initialize without a README.md)
  - `git remote rename origin upstream` - change the name of the originating remote to `upstream`. You don't have permission to push to this remote, but it is helpful to keep it just in case you would like to pull updates from the original project.
  - `git remote add mine <URL>` - add a new remote named origin and point it to the repository you just created on GitHub.
  - `git push -u origin gh-pages`

#### Fixing our game

- Show that game will not appear on website
- **DEMO:** Finding the bad commit with `git bisect`
  - Should discover the commit that changes index.html --> inde.html

#### Understanding Git Data Structure

 - Explain how a commit is formed blobs --> trees --> commits
 - Explain how the history before the commit effects the commit ID
 - Explain how some things we can do to our history can actually cause problems when we are sharing our repository.

#### Reverting Commits

  - Explain that `git revert` is safe for shared commits.
  - **DEMO:** Revert the inde.html commit and push
  - **LAB:** Learner reverts the inde.html commit, pushes and then checks game on gh-pages

#### Handling Merge Conflicts

  - **LAB:** Learner checks out the stats-update branch and attempts to merge into gh-pages
  - **DEMO:** Handling Merge Conflicts
   - In this case, the file name will be index.html on gh-pages and inde.html on the stats-update branch. This is a good place to talk about how Git handles renames and the similarity index.
  - **LAB:** Learner clears their merge conflict

#### Review: Merge Conflicts

  - **LAB:** Learner checks out the shape-color branch, opens index.html, makes changes to the colors and then tries to merge in to gh-pages.
  - **LAB:** Learner clears their merge conflict

#### Creating Atomic Commits

  - **DEMO + ACTIVITY:** Learner creates a new branch called `slow-down`
  - In the index.html file, the learner will change two lines.
  - In the `canvas` style element, move the texture.jpg file to an images directory.
  - In the speed variable, increase or decrease the start and decrement.
  - `git mv texture.jpg images/texture.jpg`
  - `git status`
  - we have made two different changes - the file and the speed. If we think of our commits as extractable units of work, we would not want to commit all of these together. Instead, we will create two different commits.
  - `git add -p` - stage the hunk for the canvas style.
  - The same file appears in both the staging and working directory - this is a good time to talk about diffs.
  - Viewing Diffs
    - **DEMO:** Viewing Diffs
      - `git diff`
      - `git diff --staged`
      - `git diff HEAD`
      - `git diff --color-words`
  - `git commit` the image move
  - `git diff` to review other changes
  - commit
  - merge the changes into gh-pages
  - `git push`

#### Fixing Bad Commits

  - **LAB:** Learner creates two files
  - **DEMO:** Show commit amend
    - Commit `onefile.md` with mis-spelled commit message
    - Stage `twofile.md`
    - Amend last commit to add `twofile.md` and fix spelling
  - **LAB:** Learner tries commit amend

### Rewriting History

- **LAB:** Learner creates four throw away files and commits them separately
- Unstaging Files
  - **DEMO:** Create a file, stage it, then unstage it
  - **LAB:** Learner creates a file, stages it, then unstages it

#### Rewinding History

  - Understanding reset
  - Git reset modes
  - **DEMO:** soft reset
  - **LAB:** Learner soft resets the last three commits
  - **DEMO:** mixed reset
  - **LAB:** Learner mixed resets the last commit
  - **DEMO:** hard reset
  - **LAB:** Learner hard resets the last commit
  - Removing files from the staging area

#### Rescuing a specific commit

- **DEMO:** Show git reflog
- **DEMO:** Show `git cherry-pick` for one of the files
- **LAB:** Learner creates a branch and cherry-picks the other two files

#### Rebasing

- **DEMO:** Checkout to `master` and add two more files, then checkout branch and rebase onto master
- **LAB:** Learner repeats demo

#### Discarding Changes in Modified Files

  - **DEMO:** Create a file, commit, make some changes, `git checkout --`
  - **LAB:** Learner makes changes to a file and then discards the changes.

### Workflow Application

- Discuss how the information they have learned over the past two days will change the way they work.
- Generate conversation about workflows and best practices.
- **Best practices:** To avoid conflicts on the push when working in a shared repository, it is a good idea to fetch first and merge (or `pull --rebase`) locally before pushing to the remote branch.
