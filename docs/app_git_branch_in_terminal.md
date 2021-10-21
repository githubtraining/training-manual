## Add the Git branch to your terminal prompt

To show your active Git branch in your terminal prompt, you will need to do the following:

- If you are on a **Mac**, you can add the code shown below to your `.bash_profile` file.
- If you are on **Linux**, you will add the code shown below to your `.bashrc` file.
- If you are on **Windows**, you probably aren't reading this because Windows provides this behavior by default.

### The script

```shell
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\w\[\033[36m\]\$(parse_git_branch) \[\033[00m\] > "
```

Or, another option:

```shell
function parse_git_branch () {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[\033[0;31m\]"
YELLOW="\[\033[0;33m\]"
GREEN="\[\033[0;32m\]"
NO_COLOR="\[\033[0m\]"

PS1="$GREEN\u@\h$NO_COLOR:\w$YELLOW\$(parse_git_branch)$NO_COLOR\$ "
```
