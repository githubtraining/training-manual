## ローカルプロジェクト履歴の確認

このセクションでは、プロジェクト履歴を確認するためのコマンドを学習します。

### Git Logの使い方

リポジトリをクローンすると、そのリポジトリで作成されたコミット履歴を全て取得できます。 「log」コマンドを使用すると、ローカル環境でコミット履歴を見ることができます。

プロジェクト履歴の表示をカスタマイズできるオプションを見てみましょう。これらのオプションの詳細については、[git-scm.com](https://git-scm.com/docs/git-log) をご参照ください。 _(Note: `--graph` オプションは、Windows ターミナルにおけるほとんどの Git Bash でデフォルトで指定されています。)_

```sh
git log
git log --oneline
git log --oneline --graph
git log --oneline --graph --decorate
git log --oneline --graph --decorate --all
git log --stat
git log --patch
```

> ↑↓のボタンやエンターキーを使うことで、ログ項目の続きを確認できます。 `q`を入力すると、ログの確認を終了し、コマンドプロンプトに戻ります。
