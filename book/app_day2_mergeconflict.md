## Day 2 Activities

### Merge Conflict Practice

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

### Refresher: Fixing a merge conflict locally

We've learned a lot! Try resolving the conflicts yourself first. If you need extra assistance, use these instructions.

1. Clone the repository to your local machine: 
    
    `git clone https://github.com/githubschool/conflict-practice-username.git`

1. Find and check out to the conflict branch, for example: 

    `git checkout my-branch`

1. Merge `master` into the conflict branch: `git merge master`. The merge will be halted because a conflict exists.
1. Read the response from Git. It will identify the file(s) with a conflict. Open the file(s) in your favorite text editor.
1. Remove the conflict markers: `<<<<<<<`, `=======`, `>>>>>>>`
1. Review the code, edit to keep the version you'd like.
1. Stage the conflicting files you've now resolve, for example: 

    `git add conflict-file.txt`

1. Finish the merge commit that was halted in #3 with: 

    `git commit -m "merge master into my-branch"`

1. Push your nonconflicted branch to GitHub: 

    `git push`