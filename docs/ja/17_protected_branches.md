## 保護されたブランチ と CODEOWNERS

作業フローによっては、重要なブランチにマージするコードに、必要な確認やピアレビューを受けさせるため、そのブランチを保護したいという時があると思います。 **Protected Branches** や **Code Owners** など、方法はいくつかあります。

### 保護されたブランチ

リポジトリメンテナは、特定ブランチへの定められた基準に満たないマージを阻止することができます。 その基準は、ピアレビューや、継続的インテグレーションサービスとコードクオリティなどのインテグレーションによるテスト、特定のコード所有者の変更へのレビューと承認などです。

保護されたブランチを有効にしましょう。

1. **Settings** のタブを選択します。
1. 画面の左側のメニューから **Branches** を選択します。
1. **Branch protection rules** の隣にある **Add rule** ボタンをクリックします。
1. **Branch name pattern** のテキストボックスに保護したいブランチの名前を入力します。例えば、 `main`。
1. **Create** ボタンをクリックします。

他のオプションにチェックを付けない場合の基本的なブランチ保護は、フォースプッシュとそのブランチの削除を防ぎます。 利用可能なオプションの詳細については、[この機能のドキュメント](https://help.github.com/articles/defining-the-mergeability-of-pull-requests/) を参照してください。

> **Pro-tip:** Branch protection rule を複数のブランチに適用させるには、ワイルドカード (`*`, `?`) や正規表現を利用することができます。ワイドカードや正規表現がどうマッチングするかについての詳細は [branch protection documentation](https://help.github.com/en/articles/configuring-protected-branches) をご参照ください。

### Code owners

リポジトリメンテナは、**CODEOWNERS** を作成することで、変更を確認する必要のある人やチームを細かく決めることができます。 例えば、CODEOWNERSは以下のように使用できます。

- チームのJavascriptの専門家には、全ての`.js` 拡張子のファイルを確認させる
- 技術仕様書チームには、全ての`docs/` フォルダの変更を確認させる
- セキュリティチームには、`package.json` に書いてある、新しい依存ファイルを確認させる

CODEOWNERS のファイルを作成しましょう。

1. リポジトリの **Code** タブを開きます。
1. **Add file** のドロップダウンをから **Create new file** をクリックします。
1. **Name your file...** のテキストボックスに `CODEOWNERS` (拡張子は不要) と入力します。 `.github/CODEOWNERS` と入力することで、 `.github/` ディレクトリに追加することができます。
1. 最初の一行目 に`*          @YOUR_USERNAME` を入力します。
   - 以降の行に記載された一致する項目が優先されない限り、あなたがリポジトリの全てのデフォルトのオーナーであることを意味します。
1. 次の行に、`*.js       @githubteacher` を入力します。
   - 記載する順番が重要になります。 指定された変更の最後に一致する項目が優先されます。
1. 下へスクロールし、 **Commit new file** のダイアログボックスにコミットメッセージを入力します。
1. 変更を保存するために、 **Commit new file** ボタンをクリックします。
1. CODEOWNERS のファイルを作成したので、ブランチ保護設定に戻り、`main` の横にある **Edit** ボタンをクリックします。
1. **Protect matching branches** 配下の **Require pull request reviews before merging** と and **Require review from Code Owners** のオプションを選択します。忘れずに **Save changes** をクリックして保存します。

CODEOWNERS ファイルの書き方の詳細については、[ドキュメント](https://help.github.com/articles/about-codeowners/) を参照してください。
