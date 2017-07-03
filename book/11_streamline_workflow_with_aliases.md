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
$ git config --global alias.co "checkout -b"
$ git config --global alias.ss "status -s"
$ git config alias.dlb '!git checkout <DEFAULT-BRANCH> && git pull --prune && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
```

#### Explore

Check out this resource for a list of common aliases:

- *[git-scm.com/book/en/v2/Git-Basics-Git-Aliases](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)* A helpful overview of some of the most common git aliases.
