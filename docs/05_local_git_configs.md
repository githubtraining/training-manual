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

![Git Configuration Levels](./img/config-levels.png)

Git allows you to set configuration options at three different levels.

#### --system
These are system-wide configurations. Saving configurations under `--system` on your work computer should be avoided in favor of `--global` and `--local`. These settings apply to all users on this computer and are usually stored in `/etc/gitconfig`.
#### --global
These are the user level configurations. They only apply to your user account and are persisted to `~/.gitconfig`.
#### --local
These are the repository level configurations. They only apply to the specific repository where they are set.  Local git configs are found within the git repo under `.git/config`.

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

Git uses the config settings for your user name and email address to generate a unique fingerprint for each of the commits you create.  You can't create commits without these settings:

```sh
$ git config --global user.name "Last, First"
$ git config --global user.email "you@example.com"
```
> Tip: Your user name and email should match the default account set up in Outlook.  A good trick is to start an email and then copy and paste your email address.  It will look something like `Last, First <you@example.com>`.

#### Git Config and Your Privacy

The instructions for this exercise use the `--global` flag when identifying your `user.name` and `user.email` configuration settings. If you are currently using a computer without a private, personal account, don't apply the `--global` flag. This way, the settings will only be stored in our assignment repository. If you work in another repository on this same computer, you will need to set these configuration options again. 

You can configure the email field for all future commits in a specific repo by running the following command in the directory where the repository is located:

> For example:
> ```sh
> git config user.email "personal_correspondence@example.com"
> ```

Your name and email address will automatically be stored in the commits you make with Git.

### Configuring autocrlf

```sh
$ //for Windows users
$ git config --global core.autocrlf true
$ //for Mac or Linux users
$ git config --global core.autocrlf input
```

Different systems handle line endings and line breaks differently. If you open a file created on another system and do not have this config option set, git will think you made changes to the file based on the way your system handles this type of file.

> Memory Tip: `autocrlf` stands for auto carriage return line feed.
