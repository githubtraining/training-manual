## Helpful Git Commands

In this section, we will explore some helpful Git commands.

### Moving and Renaming Files with Git

1. Create a new branch named `slow-down`.
1. On *line 9* of the index.html file, change the background url to *(images/texture.jpg)*.
1. On *line 78*, change the timing for the game to speed it up or slow it down.
1. Save your changes.
1. See what git is tracking: `git status`
1. Create a new, empty directory: `mkdir images`
1. Move the texture file into the directory with git: `git mv texture.jpg images/texture.jpg`

### Staging Hunks of Changes

Crafting atomic commits is an important part of creating a readable and informative history of the project.

1. See what git is tracking: `git status`.
1. Move some parts of some files to the staging area with the `--patch` flag: `git add -p`.
1. Stage the hunk related to the image move: `y`
1. Leave the hunk related to the speed change in the working area: `n`

> Wondering what all of those other options are for the hunks? Use the `?` to see a list of options above the hunk.

#### Alias Pro Tip

**Regular Commits and Save Points**
- Sometimes, you'll want to do the opposite of granular commits and move quickly. Here's an alias that stages all saved changes and gives the stub for writing a commit message.
```
git config --global alias.cm "!git add -A && git commit -m"
```
- Using the ! prefix allows you to use any command and not just git commands in the alias. It also allows you to string two commands together.
- The `-A` flag adds all changes, including untracked files, to the index.

*Source: these [three](http://haacked.com/archive/2014/07/28/github-flow-aliases/) / [blog](http://haacked.com/archive/2015/06/29/git-migrate/) /  [posts](http://haacked.com/archive/2017/01/04/git-alias-open-url/) by GitHubber Phil Haack.*
