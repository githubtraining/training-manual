## エイリアスによるワークフローの効率化

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

#### リサーチ

以下のリソースで、一般的なエイリアスの一覧を見ることができます。

- *[git-scm.com/book/en/v2/Git-Basics-Git-Aliases](https://git-scm.com/book/en/v2/Git-Basics-Git-Aliases)* 一般的なエイリアスの概要。
