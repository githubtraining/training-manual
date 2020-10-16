## Helpful Git Commands

In this section, we will explore some helpful Git commands.

### Moving and Renaming Files with Git

1. Create a new branch named `slow-down`.
1. On *line 9* of the `index.html` file, change the background url to `images/texture.jpg`.
1. On *line 78*, change the timing for the game to speed it up or slow it down.
1. Save your changes.
1. See what git is tracking:

   ```sh
   git status
   ```

1. Create a new, empty directory:

   ```sh
   mkdir images
   ```

1. Move the texture file into the directory with git:

   ```sh
   git mv texture.jpg images/texture.jpg
   ```

### Staging Hunks of Changes

Crafting atomic commits is an important part of creating a readable and informative history of the project.

1. See what git is tracking:

   ```sh
   git status
   ```

1. Move some parts of some files to the staging area with the `--patch` flag:

   ```sh
   git add -p
   ```

1. Stage the hunk related to the image move: <kbd>y</kbd>
1. Leave the hunk related to the speed change in the working area: <kbd>n</kbd>

?> Wondering what all of those other options are for the hunks? Use <kbd>?</kbd> to see a list of options above the hunk.

`git config --global alias.cm "!git add -A && git commit -m"` could be helpful here. Check out the appendix to see how!
