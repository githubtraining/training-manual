### Git and Bash for Power Users

## Bash Aliases

It's sometimes helpful to use single character aliases to run commands with only the minimal amount of typing.  For instance, `git` can be set to `g` in your terminal.  Or entire, lengthy subcommands such as `checkout` can be set to the character `c`.  

**Adding to ~/.profile**
```
alias g="git"
alias c="git checkout"
alias d="git diff"
alias glg="git log --branches --tags --graph --oneline --decorate --remotes"
```

Note that those aliases must be put into a startup file.  Typically the `~/.profile` or `~/.bashrc` will work well for defining these aliases automatically whenever your terminal boots up.  

**Usage**
```
$  g lol
$  glg
$  c master
$  d dc4389d 2b1f41c
```

## Bash Completion

For those of us who use tab completion often, we'll appreciate enabling tab completion on subcommands.  

```
cd ~
wget https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash
echo "source ~/git-completion.bash  # Enables tab completion for git subcommands" >> ~/.bashrc
```
