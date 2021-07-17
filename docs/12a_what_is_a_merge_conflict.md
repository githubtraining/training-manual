## What is a merge conflict?

When you work with a team (and even sometimes when you are working alone) you will occasionally create merge conflicts. At first, merge conflicts can be intimidating, but resolving them is actually quite easy. In this section you will learn how!

These exercises will focus on the technical "how". In real merge conflicts, it's important to know who to ask in case you aren't sure how to resolve the conflict on your own. Usually it's a good idea to ask the person who made the conflicting changes, or someone who referenced in the CODEOWNERS file.

### Local Merge Conflicts

Merge conflicts are a natural and minor side effect of distributed version control. They only happen under very specific circumstances.

- Changes to the same "hunk" of the same file
  - Two different branches
  - Changes on both branches happened since the branches have diverged
