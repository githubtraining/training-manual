## Streamlining Your Workflow with Aliases

So far we have learned quite a few commands. Some, like the log commands, can be long and tedious to type. In this section, you will learn how to create custom shortcuts for Git commands.

### Creating Custom Aliases

An alias allows you to type a shortened command to represent a long string on the command line.

For example, let's create an alias for the log command we learned earlier.

**Original Command**
```sh
$ git log --oneline --graph --decorate --all
```

**Creating the Alias**
```sh
$ git config --global alias.lol "log --oneline --graph --decorate --all"
```

**Using the Alias**
```sh
$ git lol
```

#### Other Helpful Aliases

```sh
$ git config --global alias.s "status -s"
$ git config alias.dlb '!git checkout <DEFAULT-BRANCH> && git pull --prune && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
```

#### Explore

Check out these resource for a list of common aliases:

- *[git-scm.com/book/en/v2/Git-Basics-Git-Aliases](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)* A helpful overview of some of the most common git aliases.

We also encourage you to read through these [three](http://haacked.com/archive/2014/07/28/github-flow-aliases/) / [blog](http://haacked.com/archive/2015/06/29/git-migrate/) /  [posts](http://haacked.com/archive/2017/01/04/git-alias-open-url/) by GitHubber Phil Haack.

His tips are referenced throughout the manual, so don't worry if you don't understand every concept yet.

Pro Tip # 1:  To edit aliases by hand, you can open the gitconfig file with your default editor.   
```
git config --global alias.ec "config --global -e"
```

Pro Tip # 2: To checkout to another branch, you can make a quick shortcut.
```
git config --global alias.co "checkout"
```

Pro Tip # 3: To checkout to a brand new branch, you can easily extend your existing shortcut.
```
git config --global alias.cob "checkout -b"
```
