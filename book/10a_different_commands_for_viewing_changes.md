### Comparing Changes within the Repository

`git diff` allows you to see allows you to see the difference between any two refs in the repository. The diagram below shows how you can compare the content of your working area, staging, and HEAD (or the most recent commit):

![Git Diff Options](/book/images/diff-options.jpg)

Let's try these commands on the repository:

```sh
$ git diff
$ git diff --staged
$ git diff HEAD
$ git diff --color-words
```

`git diff` will also allow you to compare between branches, commits, and tags by simply typing:

```sh
$ git diff <REF-1> <REF-2>
$ git diff gh-pages slow-down
$ git diff origin/gh-pages gh-pages
$ git diff 2710 b745
```

> **Note:** Notice that, just like merges, diffs are directional. It is easiest to think of it as "diff back to <REF-1> starting at <REF-2>" or "see what is *not* in <REF-1> but *is* in <REF-2>".
