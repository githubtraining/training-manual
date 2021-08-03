## エイリアスによる作業フローの効率化

たくさんのコマンドを学習してきましたね。 その中で、logのような、長くて入力しにくいコマンドもありましたよね。 このセクションでは、Gitコマンドのカスタムショートカットの作り方を学習していきましょう。

### カスタムエイリアスの作り方

エイリアスを使うことで、長い文字列を短いコマンドで表すことが可能です。

例として、前回学習したlogのコマンドにエイリアスを作成してみましょう。

#### オリジナルコマンド

```sh
git log --oneline --graph --decorate --all
```

#### エイリアスの作成

```sh
git config --global alias.lol "log --oneline --graph --decorate --all"
```

#### エイリアスの使い方

```sh
git lol
```

#### 役に立つエイリアス

```sh
git config --global alias.swc "switch -c"
git config --global alias.s "status -s"
```

#### 他の便利なエイリアスについてのリサーチ

以下のリソースで、一般的なエイリアスの一覧を見ることができます。

- *[git-scm.com/book/en/v2/Git-Basics-Git-Aliases](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)* 一般的なエイリアスの概要。

また、GitHub の開発者である Phil Hack が投稿したこの 3つのブログ記事もおすすめします。彼のヒントはマニュアルからも参照されています。

- [GitHub Flow Aliases](http://haacked.com/archive/2014/07/28/github-flow-aliases/)
- [Git Migrate](http://haacked.com/archive/2015/06/29/git-migrate/)
- [Git Alias Open URL](http://haacked.com/archive/2017/01/04/git-alias-open-url/)

Pro Tip # 1: 手動でエイリアスを編集する場合、gitconfig ファイルをデフォルトのエディタで開くことができるエイリアス

```sh
git config --global alias.ec "config --global -e"
```

Pro Tip # 2: 別のブランチに切替えるためのクイックショートカットとしてのエイリアス

```sh
git config --global alias.sw "switch"
```

Pro Tip # 3: 既存のショートカットを用いて作成した新しいブランチを作成するためのエイリアス

```sh
git config --global alias.swc "switch -c"
```

Pro Tip # 4: 1つのコマンドで実行できるようにしたエイリアス

```sh
git config --global alias.s "status -s"
```

Pro Tip # 5: ブランチを素早く簡単にクリーンアップするためのエイリアス

```sh
git config alias.dlb '!git checkout <DEFAULT-BRANCH> && git pull --prune && git branch --merged | grep -v "\*" | xargs -n 1 git branch -d'
```
