## ターミナルのプロンプトにGitのブランチを追加する

ターミナルのプロンプトにアクティブなGitのブランチを表示するためには、次のことを行う必要があります。

- **Mac**の場合、`.bash_profile`に以下のコードを追加します。
- **Linux**の場合、`.bashrc`に以下のコードを追加します。
- **Windows**の場合、デフォルトでこの機能が用意されているため、おそらくこの文章を読んではいないでしょう。

### スクリプト

```shell
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\w\[\033[36m\]\$(parse_git_branch) \[\033[00m\] > "
```

別のオプション

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