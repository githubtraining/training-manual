### Pushing Your Changes to GitHub

.Pushing to GitHub.
image::book/images/push-pull.jpg["Pushing to GitHub."]

In this case, our remote is GitHub.com, but this could also be your company's internal instance of GitHub Enterprise.

To push your changes to GitHub, you will use the command:

[source,console]
----
$ git push
----

[NOTE]
====
When you push, you will be asked to enter your GitHub username and password. If you would like Git to remember your credentials on this computer, you can cache your credentials using:

- *WINDOWS:* `git config --global credential.helper wincred`
- *MAC:* `git config --global credential.helper osxkeychain`
====
