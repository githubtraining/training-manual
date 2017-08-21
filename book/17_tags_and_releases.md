## Tags and Releases

You may want to put tags or releases on certain commits in your code's history to mark specific states or places in time. To do this, you could use Git's **tag** feature, or you could use GitHub's **release** feature.

### Tags

A tag is a pointer that points to a specific commit. Unlike commits, tags are _not_ immutable. They can be moved and changed. We recommend using GitHub Releases in place of tags; a tag will still be created, but it will have a GitHub linked history that cannot be changed. Before we get into Releases, let's practice a bit with tags.

When creating a tag from the command line, you can make a "lightweight" or an "annotated" tag. The following example creates an annotated tag with the `-a` flag, names the tag `v1.0`, and connects it to whichever commit SHA is included.

- `git tag -a v1.0 <SHA>`

To see all tags, type `git tag --list`.

Another caveat with tags is that they are not automatically pushed up with commits. To push tags, type `git push <remote> --tags`.

### Releases

Releases are similar to tags, because they point to a specific commit and can be named like any other tag. However, releases can also include attached binaries. This means you can upload and store the compiled program for others to download, and have that compiled version be attached to the exact source code that composes it. 

### Add a Release to GitHub-Games

1. On GitHub, navigate to the main page of the repository.
1. Under your repository name, click Releases.
1. Click Draft a new release.
1. Type a version number for your release. Versions are based on Git tags. We recommend naming tags that fit within semantic versioning.
1. Select a branch that contains the project you want to release. Usually, you'll want to release against your master branch, unless you're releasing beta software.
1. Type a title and description that describes your release.
1. If you're ready to publicize your release, click Publish release. Otherwise, click Save draft to work on it later.

> Notice that you could drag and drop or select files manually in the binaries box, or select "This is a pre-release" to notify users that it's not ready for production.
