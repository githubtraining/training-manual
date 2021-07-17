## プロジェクト: GitHub Games

このセクションでは、`github-games`というプロジェクトのリポジトリで作業します。

`github-games`のリポジトリはすでにgithubschool organizationにて作成してあります。 `https://github.com/githubschool/github-games-username`　でアクセスできます。

フォークとプルのワークフローを使っている場合は、[付録で詳しい説明を読んでください。](app_fork_workflow.md)

### ワークフローレビュー: README.mdの更新

READMEにあるリンクを、自分のリポジトリのフォークへ飛ぶように更新し、GitHubのフローを一通り練習してみましょう。

> あなたのウェブサイトは `https://githubschool.github.io/github-games-username` にあります。
>
> このリンクはリポジトリの説明欄にも記載されています。 簡単に自分のゲームにアクセスできるよう、説明欄にあるウェブサイトのURLを編集しておくと良いです。
>
> リンクをクリックしたら、`README.md`にあるテキストが表示されます。 このリポジトリの修正方法を学習するために、わざとリポジトリを壊しました。

これは復習なので、以下の手順は省略して記載しています。 復習をしながら、前の課題で学習したコマンドのショートカットを使ってみましょう。

1. リポジトリのコピーをクローンします。`git clone https://github.com/githubschool/github-games-USERNAME.git`
2. `readme-update` という新しいブランチを作成します。 `git switch -c readme-update`
3. README.mdにあるURLを編集します。
4. 変更を自分のブランチにコミットします。
5. ブランチをGitHubにプッシュします。`git push -u origin readme-update`
6. *自分のリポジトリで* Pull Request を作成します。 (base: `master`, compare: `readme-update`)
7. 自分の Pull Request をマージします。
8. GitHubのブランチを削除します。
9. リポジトリのローカルコピーを更新します。`git pull --prune`

`git switch -c readme-update` は、ブランチの作成（`git branch readme-update`）とチェックアウト（`git switch readme-update`）を合わせたショートカットです。 `-b` はGitに新しいブランチを作成するよう命令します。

> `git push -u origin readme-update` は、初めて新しいブランチをプッシュするときに使用するプッシュコマンドの少々長いバージョンです。
>
> `-u` は `--set-upstream` というオプションの短いバージョンです。 このオプションは、ローカルブランチと同一名のリモート追跡ブランチを繋げるようGitに伝えます。
>
> 初めて新しいブランチをプッシュするときのみ、この長いコマンドを使用する必要があります。 その後は、 `git push` だけで可能になります。
