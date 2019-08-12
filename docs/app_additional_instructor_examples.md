# git diff example

This example will

- (1) show the students that a file may be in 3 local states at the same time and
- (2) will clarify which file (a) or (b) is referred to when git diff shows its output.

## Setup:

```
$ mkdir show-difs
$ cd show-difs/
$ git init
$ echo "This file is in History" > file.md
$ git add file.md
$ git commit -m "added file.md"
$ echo "This file is in Staged" > file.md
$ git add file.md
$ echo "This file is in Working" > file.md
```

## Show the results of git diffs

- Show the difference(s) between what's in Working and Staged
- file a is in Staged, file b is in Working
```
$ git diff
diff --git a/file.md b/file.md
index 4959ef4..860e405 100644
--- a/file.md
+++ b/file.md
@@ -1 +1 @@
-This file is in Staged
+This file is in Working
```

- Show the difference(s) between what's in Staged and History
- file a is in History, file b is in Staged
```
$ git diff --staged
diff --git a/file.md b/file.md
index 8ff44ce..4959ef4 100644
--- a/file.md
+++ b/file.md
@@ -1 +1 @@
-This file is in History
+This file is in Staged
```

- Show the difference(s) between what's in Working and History
- file a is in History, file b is in Working
```
$ git diff HEAD
diff --git a/file.md b/file.md
index 8ff44ce..860e405 100644
--- a/file.md
+++ b/file.md
@@ -1 +1 @@
-This file is in History
+This file is in Working
```
