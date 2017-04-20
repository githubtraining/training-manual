### Pushing Your Changes to GitHub

![Pushing to GitHub](/img/push-pull.jpg)

In this case, our remote is GitHub.com, but this could also be your company's internal instance of GitHub Enterprise.

To push your changes to GitHub, you will use the command:

```sh
$ git push
```

> **Note:** When you push, you will be asked to enter your GitHub username and password. If you would like Git to remember your credentials on this computer, you can cache your credentials using:
- Windows: `git config --global credential.helper wincred`
- Mac: `git config --global credential.helper osxkeychain`
