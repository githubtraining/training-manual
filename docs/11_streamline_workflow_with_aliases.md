## Streamlining Your Workflow with Aliases

So far we have learned quite a few commands. Some, like the log commands, can be long and tedious to type. In this section, you will learn how to create custom shortcuts for Git commands.

### Creating Custom Aliases

An alias allows you to type a shortened command to represent a long string on the command line.

For example, let's create an alias for the log command we learned earlier.

#### Original Command

```sh
git log --oneline --graph --decorate --all
```

#### Creating the Alias

```sh
git config --global alias.lol "log --oneline --graph --decorate --all"
```

#### Using the Alias

```sh
git lol
```

#### Explore Other Helpful Aliases

Check out these resources for a list of common aliases:

- *[git-scm.com/book/en/v2/Git-Basics-Git-Aliases](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)* A helpful overview of some of the most common git aliases.

We also encourage you to read through these three blog posts by GitHub developer Phil Hack. His tips are referenced throughout the manual.

- [GitHub Flow Aliases](http://haacked.com/archive/2014/07/28/github-flow-aliases/)
- [Git Migrate](http://haacked.com/archive/2015/06/29/git-migrate/)
- [Git Alias Open URL](http://haacked.com/archive/2017/01/04/git-alias-open-url/)

Pro Tip # 1:  To edit aliases by hand, you can open the gitconfig file with your default editor.

```sh
git config --global alias.ec "config --global -e"
```

Pro Tip # 2: To switch to another branch, you can make a quick shortcut.

```sh
git config --global alias.sw "switch"
```

Pro Tip # 3: To create and switch to a brand new branch, you can easily extend your existing shortcut.

```sh
git config --global alias.swc "switch -c"
```

Pro Tip # 4: You can create aliases that only call one command.

```sh
git config --global alias.s "status -s"
```

Pro Tip # 5: Clean up branches quickly and easily.

```sh
git config alias.dlb '!git checkout <DEFAULT-BRANCH> && git pull --prune && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
```
