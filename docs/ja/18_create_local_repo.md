### 新しいローカルリポジトリの初期化方法

次のコマンドを練習するために、ローカルリポジトリを作成しましょう。

1. 練習のリポジトリを置くディレクトリに移動します（`cd ..` で親フォルダに戻れます）。

- 新しいディレクトリを作成し、gitのリポジトリとして初期化します。`git init practice-repo` - CDで新しいリポジトリに移動します。`cd practice-repo` - `README.md` という新しいファイルを作成します。`touch README.md` - README.md ファイルをアッドし、コミットします。

これを練習用のリポジトリとして使うので、いくつかのファイルとコミットを作成する必要があります。 以下のスクリプトで簡単に作成できます。

#### Bash:

    for d in {1..6}; do touch "file${d}.md"; git add "file${d}.md"; git commit -m "adding file ${d}"; done
    

#### PowerShell:

    for ($d=1; $d -le 6; $d++) { touch file$d.md; git add file$d.md; git commit -m "adding file$d.md"; }