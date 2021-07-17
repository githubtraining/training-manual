## Project: GitHub Games

In this section, we will work on a project repository called `github-games`.

A `github-games` repository has been created for you in the githubschool organization. You can access the repository at `https://github.com/githubschool/github-games-USERNAME`.

If you're using the Fork and Pull Workflow, [don't forget to look in the appendix for a more thorough explanation](app_fork_workflow.md).

### Workflow Review: Updating the README.md

Now you will practice the GitHub Flow from beginning to end by updating the link in the README to point to your fork of the repository.

> Remember, your copy of the website will be rendered at `https://githubschool.github.io/github-games-USERNAME`.
>
> This link also appears in the repository description. It is a good idea to edit the website URL in the description so you can easily access your game.
>
> If you click the link, you will see the text in the `README.md`. We have intentionally broken this repository so we can fix it together.

Since this is a review, we have written these steps at a high level. As we complete the review, we will show you a few shortcuts for the commands you learned in the previous activity:

1. Clone your copy of the repository: `git clone https://github.com/githubschool/github-games-USERNAME.git`
1. Create a new branch called `readme-update`: `git switch -c readme-update`
1. Edit the URL in the README.md.
1. Commit the changes to your branch.
1. Push your branch to GitHub: `git push -u origin readme-update`
1. Create a Pull Request *in your repository* (base: `main`, compare: `readme-update`)
1. Merge your Pull Request.
1. Delete the branch on GitHub.
1. Update your local copy of the repository: `git pull --prune`

`git switch -c readme-update` is a shortcut command that allows you to combine the creation of the branch and switching to that branch. The `-c` tells Git to create a new branch.

> `git push -u origin readme-update` is the slightly longer version of the push command that should be used when you push a new branch for the first time.
>
> The `-u` is the short version of the option `--set-upstream`. This option tells Git to create a relationship between our local branch and a remote tracking branch of the same name.\
>
> You only need to use this long command the first time you push a new branch. After that, you can simply use `git push`.

`git config --global alias.bclean "!f() { branches=$(git branch --merged ${1-main} | grep -v " ${1-main}$"); [ -z \"$branches\" ] || git branch -d $branches; }; f"` could be helpful here. **Take a peek in the appendix to learn how!**
