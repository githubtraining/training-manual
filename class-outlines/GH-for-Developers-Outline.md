# GitHub for Developers

This guide is intended to provide a cliff notes style overview of the GitHub for Developers curriculum.

### Getting Started with Collaboration

- Introducing GitHub
 - **ASK:** Currently using GitHub? Currently using Git?
  - What is GitHub?
  - Key GitHub Features
  - The GitHub Ecosystem
- Exploring a Repository
  - GitHub Repositories
  - **DEMO:** Exploring a repository
    - `Code` view
    - `README.md`
    - `Issues` view
    - `Pull Request` view
- Using Issues
  - **DEMO:** Create an issue to add learners as collaborators
  - **ACTIVITY:** Learners comment on issue to be added as collaborators (add-collaborators.rb)
  - Show adding collaborators manually

### Understanding the GitHub Flow

- Overview of the GitHub Flow (guides.github.com)

### Create Branch on GitHub

- Using Branches
  - **DEMO:** Creating a Branch on GitHub
    - Create a branch named 'username-bio'; creating branch on GitHub before cloning is a best practice to reduce conflicts
  - **LAB:** Learners create their own branch.

### Working Locally

- Cloning a Repository
  - Why we clone
  - Check `git --version`
  - **DEMO:** Clone the repository
    - Navigate to the location where you would like to clone the repo
    - `git clone <URL>`
    - `cd <repo-name>`
    - `git status`
    - `git branch`
    - `git branch --all`
    - `git checkout <branch-name>`
  - **LAB:** Learner clones the repo and checks out their branch
- Basic Command Line Interface (CLI) Configuration
  - Git Configuration Levels (`--system`, `--global`, `--local`)
  - **DEMO + ACTIVITY:** Set basic config
    - `git config --list`
    - `user.name`
    - `user.email`
    - `core.editor`
    - `core.autocrlf`
    - `push.default`
    - `git config --global --list`

### Creating and Committing Local Files

- Create a local file
 - **DEMO:** Create a file locally; name the file `<username-bio>.md`
 - **LAB:** Learner creates a file named `<username-bio>.md`
- The Two Stage Commit
 - Explain the two stage commit (5 progressive slides)
 - **DEMO:** Commit the changes
   - Use status to show file moving between stages
 - **LAB:** Learner adds and commits file
- Pushing Changes
 - Explain push
 - **DEMO:** Push changes setting -u
 - **LAB:** Learner pushes changes
- Creating Pull Requests
 - Understanding Pull Requests
 - **DEMO:** Creating a Pull Request on GitHub
   - Show `base:` and `compare:` drop downs
   - Show markdown formatting for headers, @ mentions and checklists
   - Show keywords `closes`, `fixes`, `resolves` to close related issue
   - `Preview`
   - `Conversation` view
   - `Commits` view
   - `Files changed` view
   - Create line comment
 - **LAB:** Learner creates a pull request and then comments on someone else's pull request.

===== PACE CHECK =====

- Editing Pull Request Files
 - **DEMO:** Edit the file based on the pull request comments
  - Edit and commit the file changes
  - Show the `Commits` tab
 - **LAB:** Learner edits their file based on comments in the pull request
  - Add :+1: emoji
- Merging Pull Requests
 - What happens when we merge Pull Requests
 - **DEMO:** Merge the pull request, closing the issue in the merge commit.
   - Delete the branch
   - Show the closed issue
 - **LAB:** Learner merges their pull request and deletes the branch

### Editing Files on GitHub

- Edit the bio file on GitHub
  - **DEMO:** Create a branch on GitHub
  - **LAB:** Learner creates a branch on GitHub
  - **DEMO:** Open the bio file on GitHub; make and commit changes on the branch
  - **LAB:** Learner edits the bio file and commits the changes to their branch.
  - Show file on master without changes
  - Show file on the branch with changes
  - **LAB:** Create PR and merge changes

### Common Local Scenarios

- Oops, I forgot to create a branch
  - **DEMO:** Modify file before creating branch
    - Create branch
    - Add file to staging area
- Same file in staging and working  
    - Make more changes
    - `git status`
    - **LAB:** Learner completes same steps to prepare for diff

### Viewing Local Diffs and History

- Viewing Local Diffs
  - Comparing Local File States
  - **DEMO:** Viewing Local Diffs
    - `git diff`
    - `git diff --staged`
    - `git diff HEAD`
    - `git diff --color-words`
  - **LAB:** Learner explores diff options then commits file.  
- Viewing Project History
  - **DEMO:** Show basic log and additive options
    - `git log`
    - `git log --oneline`
    - `git log --oneline --graph`
    - `git log --oneline --graph --decorate`
    - `git log --oneline --graph --decorate --all`
    - `git log --stat`
    - `git log --patch`
  - **LAB:** Learner tries the log commands

### Fixing Bad Commits
  - **LAB:** Learner creates two files
  - **DEMO:** Show commit amend
    - Commit `onefile.md` with mis-spelled commit message
    - Stage `twofile.md`
    - Amend last commit to add `twofile.md` and fix spelling
  - **LAB:** Learner tries commit amend

### Creating Shortcuts

- Creating Aliases
  - **DEMO:** Create aliases
    - `git config --global alias.lol \"log --oneline --graph --decorate --all\"`
    - Show `git lol`
    - `git config --global alias.co \"checkout -b\"`
    - `git config --global alias.ss \"status -s\"`
  - **LAB:** learner creates their own aliases
- Pruning remote tracking Branches
 - set `git config --global fetch.prune true`

===== END OF DAY 1 =====

### The Workflow End-to-End

- Forking a repository
  - **DEMO:** Fork the scenario repo and clone it locally
   - Show parent repo and no issues
  - **LAB:** Learners fork and clone the repo
- Creating Local Branches
  - **DEMO:** Create a branch locally naming it readme-updates
  - **LAB:** Learner creates a branch locally
- Workflow Review
  - **DEMO:** Review the workflow from beginning to end
    - Edit the README.md file to add the link to the gh-pages site where the learner's fork of the game will appear
    - Add and commit
    - Push
    - Create pull request
    - Add heading for instructions in README.md
    - Add and commit
    - pull changes locally
    - Merging changes locally
    - Push
    - Show merged pull request
    - Delete branch on remote
  - **LAB:** Learner completes workflow
- Cleaning up branches
  - **DEMO:** Pull --prune
    - `git branch --merged`
    - `git branch -d`
  - **LAB:** Learner pulls changes and deletes branch

  ===== PACE CHECK =====

### Fixing Common Issues with Git

- Reverting Commits
 - Show that game will not appear on website
 - Show commit that changes index.html --> inde.html
 - **DEMO:** Revert the inde.html commit and push
 - **LAB:** Learner reverts the inde.html commit, pushes and then checks game on gh-pages
- Handling Merge Conflicts Locally
  - **LAB:** Learner checks out the stats-update branch and attempts to merge into gh-pages locally
  - **DEMO:** Handling Merge Conflicts
  - **LAB:** Learner clears their merge conflict
- Handling Merge Conflicts on the Remote
  - **LAB:** Learner checks out the shape-color branch, opens index.html, and makes changes to the colors. Then creates a pull request on the remote
  - **DEMO:** Handling merge conflicts on the remote
  - **LAB:** Handle merge conflict at the Remote
- Partner Merge Conflicts (in-person classes only - skip for online classes) + add -p & git mv
  - **DEMO & LAB:** Instructions -->
   - Partners add each other as collaborators to their forks
   - Partners clone each other's forks (show `git clone <URL> repo-name` to avoid name conflicts)
   - Working on one of the repos, both partners create a branch and make changes to the same files as follows:
    - Add instructions for playing the game to the README.md
    - Change the timing for the game to speed it up or slow it down in index.html
    - Change location of texture.jpg to images/texture.jpg
  - `git status`
  - `mkdir images`
  - `git mv texture.jpg images/texture.jpg`
  - `git status`
  - `git add -p` - stage the change for the image location
  - `git commit`
  - show diff to review other changes - commit the changes
  - `git push` and create Pull Requests
  - one partner merges pull request
  - the other partner will have conflict - resolve the conflict

===== PACE CHECK =====

### Creating a Repository Locally

- Creating a Repository on the Command Line
  - **DEMO:** Init an empty repo
    - `ls -la`
    - Add a README.md to the repo
  - **LAB:** Learner creates a repo and adds a README

### Resetting

- **LAB:** Learner creates four throw away files and commits them separately
- Unstaging Files
  - **DEMO:** Create a file, stage it, then unstage it
  - **LAB:** Learner creates a file, stages it, then unstages it
- Resetting History
  - Understanding reset
  - Git reset modes
  - **DEMO:** soft reset
  - **LAB:** Learner soft resets the last three commits
  - **DEMO:** mixed reset
  - **LAB:** Learner mixed resets the last commit
  - **DEMO:** hard reset
  - **LAB:** Learner hard resets the last commit

### Cherry-picking

- **DEMO:** Show git reflog
- **DEMO:** Show `git cherry-pick` for one of the files
- **LAB:** Learner creates a branch and cherry-picks the other two files

### Rebasing

- **DEMO:** Checkout to `master` and add two more files, then checkout branch and rebase onto master
- **LAB:** Learner repeats demo

- Discarding Changes in Modified Files
  - **DEMO:** Create a file, commit, make some changes, `git checkout --`
  - **LAB:** Learner makes changes to a file and then discards the changes.

### Workflow Application

- Discuss how the information they have learned over the past two days will change the way they work.
- Generate conversation about workflows and best practices.
