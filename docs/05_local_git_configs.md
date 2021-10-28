## Local Git configuration

In this section, we will prepare your local environment to work with Git.

### Checking your Git version

First, let's confirm your [Git Installation](https://git-scm.com/downloads):

```sh
git version
```

If Git is installed, it will return your version: `git version 2.33.1`.

If you do not see a Git version listed or this command returns an error, you may need to install Git.

> To get the latest version of Git, visit [www.git-scm.com](https://www.git-scm.com).

### Git configuration levels

![Git Configuration Levels](./img/config-levels.png)

Git allows you to set configuration options at three different levels.

#### --system

These are system-wide configurations. They apply to all users on this computer.

#### --global

These are the user level configurations. They only apply to your user account.

#### --local

These are the repository level configurations. They only apply to the specific repository where they are set.

> The default value for git config is `--local`.

### Viewing your configurations

If you would like to see which config settings have been added automatically, you can type `git config --list`. This will automatically read from each of the three config files and list the setting they contain.

```sh
git config --list
```

You can also narrow the list to a specific configuration level by including it before the list option.

```sh
git config --global --list
```

### Configuring your name and email address

Git uses the config settings for your user name and email address to generate a unique fingerprint for each of the commits you create. You can't create commits without these settings:

```sh
git config --global user.name "First-name Surname"
git config --global user.email "you@email.com"
```

**Example:**

```sh
git config --global user.name "Mona Octocat"
git config --global user.email "mona@github.com"
```

> **Tip:** If you make a typo when setting one of your config properties, don't worry.  You can rerun the same `git config` command with different values between the double quotes to update the property to a new value.  If you typo a property name, you can delete the property with the following command:
>
> ```sh
> git config --global --unset <property_name>
> ```

#### Git config and your privacy

The instructions for this exercise use the `--global` flag when identifying your `user.name` and `user.email` configuration settings. If you are currently using a computer without a private, personal account, don't apply the `--global` flag. This way, the settings will only be stored in our assignment repository. If you work in another repository on this same computer, you will need to set these configuration options again.

> For example:
>
> ```sh
> git config user.email "you@email.com"
>```

Your name and email address will automatically be stored in the commits you make with Git. If you would like your email to remain private, GitHub allows you to generate a no-reply email address for your account. Click the **Keep my email address private** in the [Settings > Emails section](https://github.com/settings/emails). After enabling this feature, you just need to enter the automatically generated `ID+username@users.noreply.github.com` when configuring your email.

> For example:
>
> ```sh
> git config --global user.email 18249274+githubteacher@users.noreply.github.com
> ```

### Configuring autocrlf

```sh
//for Windows users
git config --global core.autocrlf true

//for Mac or Linux users
git config --global core.autocrlf input
```

Different systems handle line endings and line breaks differently. If you open a file created on another system and do not have this config option set, Git will think you made changes to the file based on the way your system handles this type of file.

> Memory Tip: `autocrlf` stands for auto carriage return line feed.
