## Project: GitHub Games

In this section, we will work on a project repository called `github-games`.

A `github-games` repository has been created for you in the githubschool organization. You can access the repository at `https://github.com/githubschool/github-games-username`.

### Workflow Review: Updating the README.md

Now you will practice the GitHub Flow from beginning to end by updating the link in the README to point to your fork of the repository.

> **Note:** Remember, your copy of the website will be rendered at `https://githubschool.github.io/github-games-username`.

> This link also appears in the repository description. It is a good idea to edit the website URL in the description so you can easily access your game.

> If you click the link, you will see the text in the `README.md`. We have intentionally broken this repository so we can fix it together.

Since this is a review, we have written these steps at a high level. As we complete the review, we will show you a few shortcuts for the commands you learned in the previous activity:

1. Clone your copy of the repository: `git clone https://github.com/githubschool/github-games-USERNAME.git`
- Create a new branch called `readme-update`: `git checkout -b readme-update`
- Edit the URL in the README.md.
- Commit the changes to your branch.
- Push your branch to GitHub: `git push -u origin readme-update`
- Create a Pull Request *in your repository* (base: `gh-pages`, compare: `readme-update`)
- Merge your Pull Request.
- Delete the branch on GitHub.
- Update your local copy of the repository: `git pull --prune`

`git checkout -b readme-update` is a shortcut command that allows you to combine the creation of the branch (`git branch readme-update`) and checking out to that branch (`git checkout readme-update`). The `-b` tells Git to create a new branch.

> **Note:** `git push -u origin readme-update` is the slightly longer version of the push command that should be used when you push a new branch for the first time.

> The `-u` is the short version of the option `--set-upstream`. This option tells Git to create a relationship between our local branch and a remote tracking branch of the same name.

> You only need to use this long command the first time you push a new branch. After that, you can simply use `git push`.
