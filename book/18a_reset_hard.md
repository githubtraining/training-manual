### Reset Hard

Last but not least, let's try a hard reset.

.Activity Instructions
. Start by viewing the history of our project with: `git log --oneline`
. Reset to the point in time where the only file that existed was the README.md: `git reset --hard <SHA>`
. See that all of the commits are gone: `git log --oneline`
. Notice your working directory is clean: `git status`
. Ssee that the only file in your repository is the README.md: `ls`

[WARNING]
====
Remember, `git reset --hard` overwrites your working directory, staging area, and history. This means that uncommitted changes you have made to your files will be completely lost. Don't use it unless you really want to discard your changes.
====
