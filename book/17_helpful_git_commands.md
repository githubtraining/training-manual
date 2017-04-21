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

> **Note:** Wondering what all of those other options are for the hunks? Use the `?` to see a list of options above the hunk.
