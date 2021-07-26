## ローカル変更の表示

ステージングエリアとワーキングディレクトリにファイルが入っているので、リポジトリのさまざまな点を比較する方法を見てみましょう。

### リポジトリでの変更を比較する方法

`git diff` でリポジトリにある2つのrefの違いを見ることができます。 以下の図は、ワーキングエリアやステージング、HEAD（最新コミット）の内容を比較する方法を表しています。

![Git diffのオプション](../img/diff-options.png)

リポジトリにこのコマンドを使ってみましょう。

```sh
git diff
git diff --staged
git diff HEAD
git diff --color-words
```

`git diff` は、以下のように入力するだけでブランチとコミットとタグの間を比較することもできます。

```sh
git diff <REF-1> <REF-2>
git diff main slow-down
git diff origin/main main
git diff 2710 b745
```

> diffは、マージと同様、方向性があることに気をつけましょう。 diffは、後述時点から前述時点に戻る、もしくは、後述時点で入っていて前述時点で入っていない、というように考えると分かりやすいです。 `<REF-1>` `<REF-2>` `<REF-1>` `<REF-2>`
