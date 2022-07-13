### 新しいローカルリポジトリの初期化方法

次のコマンドを練習するために、ローカルリポジトリを作成しましょう。

1. 練習のリポジトリを置くディレクトリに移動します（`cd ..` で親フォルダに戻れます）。
1. 新しいディレクトリを作成し、gitのリポジトリとして初期化します。 `git init practice-repo`
1. `cd` コマンドで新しいリポジトリに移動します。 `cd practice-repo`
1. `README.md` という新しいファイルを作成します。
   - Bash: `touch README.md`
   - PowerShell: `Out-File README.md`
1. README.md ファイルをステージングに追加し、コミットします。

これを練習用のリポジトリとして使うので、いくつかのファイルとコミットを作成する必要があります。 以下のスクリプトで簡単に作成できます。

**Bash:**

```bash
for d in {1..6}; do touch "file${d}.md"; git add "file${d}.md"; git commit -m "adding file ${d}"; done
```

**PowerShell:**

```powershell
for ($d=1; $d -le 6; $d++) { Out-File file$d.md; git add file$d.md; git commit -m "adding file$d.md"; }
```

> このセクションの間、`tree .git` というコマンドを見るかもしれません。もし、あなたの作業環境で `tree .git` が実行できない場合（おそらく Windows マシン）は、代わりに `cmd //c tree` を試してみてください。
