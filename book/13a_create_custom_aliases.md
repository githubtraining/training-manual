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
