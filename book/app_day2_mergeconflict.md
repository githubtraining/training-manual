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

### Multiple conflict markers in "Minor CSS fixes"

In some cases, you may notice multiple conflict markers. When these appear, it is either because:

1. You've got multiple conflicts in the same file, or
1. Another developer has neglected to remove markers when fixing a previous conflict, and committed those markers to your project's history.

Regardless of the reason, it's up to you to resolve it as a steward of this project! Here's an example of how this might work from the pull request titled "Minor CSS fixes":

1. Merge the master branch into your conflict branch. The multiple markers may look something like this.

    ```css
    <<<<<<< HEAD
    a {
    <<<<<<< HEAD
        color: #000;
    =======

    /**a{
        color: #999999;
    >>>>>>> master
    }

    a:hover{
        color: #fff;
    =======
        color: #999999;
    }

    a:hover{
        color: #dddddd;
    <<<<<<< HEAD
    >>>>>>> master
    =======
    >>>>>>> master
    }
    **/
    ```

1. Remove all conflict markers, regardless of where they originated.

    ```css
    a {
        color: #000;

    /**a{
        color: #999999;
    }

    a:hover{
        color: #fff;
        color: #999999;
    }

    a:hover{
        color: #dddddd;
    }
    **/
    ```

1. Review the code so it will still build. In this example, the CSS needs a closing brace, and we'll also remove the commented code.

    ```css
    a {
        color: #000;
    }
    ```
