### Understanding Git Merge Strategies

Git uses three primary merge strategies:

#### Fast forward
A fast forward merge assumes that no changes have been made on the base branch since the feature branch was created. This means that the branch pointer for base can simply be "fast forwarded" to point to the same commit as the feature branch.
#### Recursive
A recursive merge means that changes have been made on both the base branch and the feature branch and git needs to recursively combine them. With a recursive merge, a new "merge commit" is made to mark the point in time when the two branches came together. This merge commit is special because it has more than one parent.
#### Octopus
A merge of 3 or more branches is an octopus merge. This will also create a merge commit with multiple parents.
