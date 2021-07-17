## Tags and Releases

You may want to put tags or releases on certain commits in your code's history to mark specific states or places in time. To do this, you could use Git's **tag** feature, or you could use GitHub's **release** feature.

### Tags

A tag is a pointer that points to a specific commit. Git tags are of two variants, an _annotated tag_ and a _lightweight tag_. An annotated tag is an immutable object unlike a lightweight tag which is mutable. Let's practice a bit with tags.

Tags can be created locally with Git, or on GitHub. When creating a tag from the command line, it's recommended to create an "annotated" tag. The following example creates an annotated tag with the `-a` flag, names the tag `v1.0`, and connects it to whichever commit SHA is included.

- `git tag -a v1.0 <SHA>`

To see all tags, type `git tag --list`.

Another caveat with tags is that they are not automatically pushed up with commits. To push tags, type `git push --tags`.

 You can also set this as a default with configs using `git config push.followTags true` which will automatically push tags when their associated commits are pushed. [Read more about this config setting](https://git-scm.com/docs/git-config/2.4.1#git-config-pushfollowTags).

### Releases

Releases are a GitHub feature that allow you to add an executable to the tag for easier access by visitors who just want to download and install your software. Releases are tags, because they point to a specific commit and can be named like any other tag. However, releases can also include attached binaries.

### Add a Release to GitHub-Games

1. On GitHub, navigate to the **Code** tab of the repository.
1. Under your repository name, click Releases.
1. Click Draft a new release.
1. Type a name for the tag. We recommend you use semantic versioning.
1. Select a branch that contains the project you want to release. Usually, you'll want to release against your main branch, unless you're releasing beta software. You can also select a recent commit by choosing the recent commits tab.
1. Type a title and description that describes your release.
1. If you're ready to publicize your release, click Publish release. Otherwise, click Save draft to work on it later.

> Notice that you could drag and drop or select files manually in the binaries box, or select "This is a pre-release" to notify users that it's not ready for production.
