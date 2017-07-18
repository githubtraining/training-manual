## Local Git Configuration

In this section, we will prepare your local environment to work with Git.

### Checking Your Git Version

First, let's confirm your [Git Installation](https://git-scm.com/downloads):

```sh
$ git --version
$ git version 2.11.0
```

If you do not see a git version listed or this command returns an error, you may need to install Git.

> To get the latest version of Git, visit [www.git-scm.com](https://www.git-scm.com).

### Git Configuration Levels

![Git Configuration Levels](img/config-levels.jpg)

Git allows you to set configuration options at three different levels.

#### --system
These are system-wide configurations. They apply to all users on this computer.
#### --global
These are the user level configurations. They only apply to your user account.
#### --local
These are the repository level configurations. They only apply to the specific repository where they are set.

> The default value for git config is `--local`.

### Viewing Your Configurations

If you would like to see which config settings have been added automatically, you can type `git config --list`. This will automatically read from each of the three config files and list the setting they contain.

```sh
$ git config --list
```

You can also narrow the list to a specific configuration level by including it before the list option.

```sh
$ git config --global --list
```

### Configuring Your User Name and Email

Git uses the config settings for your user name and email address to generate a unique fingerprint for each of the commits you create. You can't create commits without these settings:

```sh
$ git config --global user.name "First Last"
$ git config --global user.email "you@email.com"
```

> If you would like your email to remain private when working on projects on GitHub. Click the **Keep my email address private** in the Settings > Emails section. After enabling this feature, you just need to enter the automatically generated ID+username@users.noreply.github.com when configuring your email. For example: `git config --global user.email 18249274+githubteacher@users.noreply.github.com`.

### Configuring autocrlf

```sh
$ //for Windows users
$ git config --global core.autocrlf true
$ //for Mac or Linux users
$ git config --global core.autocrlf input
```

Different systems handle line endings and line breaks differently. If you open a file created on another system and do not have this config option set, git will think you made changes to the file based on the way your system handles this type of file.

> Memory Tip: `autocrlf` stands for auto carriage return line feed.
