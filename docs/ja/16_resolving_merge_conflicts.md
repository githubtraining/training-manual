## マージコンフリクトの解決方法

チームで作業しているときに（1人で作業しているときにも）マージコンフリクトが時折発生してしまいます。 マージコンフリクトを恐ろしい問題だと感じるかもしれませんが、その解決方法はとても簡単です。 このセクションでは、その方法を学習していきましょう！

### ローカルのマージコンフリクト

マージコンフリクトの練習として、2つの異なるブランチで、同じファイルの同じ行を変更しました。 この2つのブランチをマージし、結果を見てみましょう。

1. 既存の `remotes/origin/stats-update` のブランチからブランチを作成します。`git checkout stats-update`
2. 作成したstats-updateブランチにmasterブランチをマージします。`git merge master`

    以下のようなコンフリクトメッセージが表示されます。

    ```sh $ git merge master Auto-merging index.html CONFLICT (content): Merge conflict in index.html Automatic merge failed; fix conflicts and then commit the result.

    <br />1. コンフリクトを起こしているファイルを突き止めます。`git status`
    1. **Unmerged Paths:**に記載されているファイルをテキストエディタで開きます。
    1. マージコンフリクトの印を探します。（以下参照）
    ```sh
    &lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt;&lt; HEAD
    テキスト
    =========
    続きのテキスト
    &gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt;&gt; stats-update


1. 残したいコードのバージョンを選択します。
2. コンフリクトの印を削除します。
3. ファイルを保存します。
4. テキストエディタを閉じます。
5. Gitが何を追跡しているのかを確認します。`git status`
6. ファイルを解決済みとしてマークします。`git add index.html`
7. マージを完了させます。`git commit`
8. デフォルトのコミットメッセージを保存します。

> マージメッセージとは？ 今回の場合では、再帰的なマージを行っています。 再帰的なマージは、この２つのブランチがマージされた時点を永続的に記録する、新しいコミットを作成します。 Gitのマージの活用については、後ほど説明します。


## 複数のリモートの作業方法

フォークはフォークボタンをクリックした時点でのリポジトリの静的なコピーだということは、フォーク作成時に説明しました。

現実の作業では、新しい機能の追加とバグの修正が行われ、元のプロジェクトに変更が加えられていきます。 元のリポジトリに加えられた変更は、私たちのコピーにどのように引き込めばよいのでしょうか？ 学習していきましょう。

1. 上流のフォークから新しいリモートを追加します。`git remote add upstream https://github.com/githubschool/github-games.git`
2. リモートの設定を確認します。`git remote -v`
3. 上流のフォークからリモートの追跡ブランチをフェッチします。`git fetch upstream`
4. リポジトリのリモートフォークにある `shape-colors` に基づき、`shape-colors` というローカルブランチを作成します。`git checkout -b shape-colors origin/shape-colors`
5. 自分のブランチと上流ブランチの違いを確認します。`git diff shape-colors upstream/shape-colors`
6. 上流のフォークの `shape-colors` ブランチから変更をマージします。`git merge upstream/shape-colors`
7. リモートフォークをローカル変更で更新します。`git push`
8. *自分のリポジトリで* Pull Request を作成します。 (base: `master`, compare: `shape-colors`)

> マージが完了した後、`git remote remove upstream` を使って、整理することもできます。 これにより、リモート及び、それに関係するリモート追跡ブランチが削除されます。

### リモートのマージコンフリクト

Pull Request を作成したとき、マージコンフリクトが発生したはずです。 masterでも色が変更されたことがその原因です。 GitHub Merge Conflicts UIを使って、このコンフリクトを解決しましょう。

1. *Resolve conflict* をクリックします。
2. *Next* を使って、コンフリクトを突き止めます。
3. 残したい色のバージョンを決めます。
4. 選択しなかった方の色とコンフリクトの印を削除します。
5. *Mark as resolved* をクリックします。
6. *Commit changes* をクリックします。

> GitHub.com UIで解決するには、複雑すぎるマージコンフリクトもあります。 その場合は、Resolve conflictのボタンが無効となります。
>
> マージのダイアログボックスにある*コマンドライン指示*では、参考になる解決方法が表示されます。 *注意：* コマンドライン指示は、マージし、Pull Request を終了する準備ができていることが前提なので、まだ変更を考慮している場合は、手順の第１ステップのみをやりましょう。

### リサーチ

もっと学習したい？ 他にできることは、

- ゲームに新しい背景を追加し、Pull Request 経由でgithubschoolにサブミットしてみましょう。
