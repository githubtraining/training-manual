[[_git_add_p]]
### Staging Hunks of Changes

Crafting atomic commits is an important part of creating a readable and informative history of the project.

.Activity Instructions
. See what git is tracking: `git status`.
. Move some parts of some files to the staging area with the `--patch` flag: `git add -p`.
. Stage the hunk related to the image move: `y`
. Leave the hunk related to the speed change in the working area: `n`

[NOTE]
====
Wondering what all of those other options are for the hunks? Use the `?` to see a list of options above the hunk.
====
