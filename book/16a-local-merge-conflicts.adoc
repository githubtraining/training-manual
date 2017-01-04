### Local Merge Conflicts

To practice merge conflicts, have made changes to the same line, in the same file, on two different branches. Let's try to merge these two branches together and see what happens:

.Activity Instructions
. Create a branch from the existing `remotes/origin/stats-update` branch: `git checkout stats-update`.
. Merge the gh-pages branch into the stats-update branch you just created: `git merge gh-pages`.

You should receive a conflict message similar to the one shown below:

[source,console]
----
$ git merge gh-pages
Auto-merging index.html
CONFLICT (content): Merge conflict in index.html
Automatic merge failed; fix conflicts and then commit the result.
----

.Activity Instructions
. Determine which file(s) are in conflict: `git status`
. Open the file(s) listed under **Unmerged Paths:** in your text editor.
. Look for the merge conflict markers (shown below).

[source,console]
----
<<<<<<<<< HEAD
Some text
=========
Some more text
>>>>>>>>> stats-update
----

<<<

.Activity Instructions
. Choose which version of the code you would like to keep.
. Delete the conflict markers.
. Save the file.
. Close the text editor.
. Check to see what git is tracking: `git status`
. Mark the file as resolved: `git add index.html`
. Complete the merge: `git commit`
. Save the default commit message.

[NOTE]
====
What is a merge message? In this example, we are doing a recursive merge. A recursive merge creates a new commit that permanently records the point in time when these two branches were merged together. We will talk more about Git's merge strategies a little later.
====
