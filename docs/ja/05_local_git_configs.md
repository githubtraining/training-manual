## ローカルのGitの設定

このセクションでは、Gitで作業するためのローカル環境を設定します。

### Gitのバージョンをチェック

まず、[Git Installation](https://git-scm.com/downloads)を確認しましょう。

```sh
git version
```

Gitがインストールされている場合、`git version 2.33.1` とバージョンが返却されます。

掲載されているGitバージョンが表示されていない場合や、このコマンドでエラーが返された場合は、Gitをインストールする必要があるかもしれません。

> Gitの最新版を入手するには、[www.git-scm.com](https://www.git-scm.com)にアクセスしてください。

### Gitの設定レベル

![Gitの設定レベル](../img/config-levels.png)

Gitでは、3つの異なるレベルで設定オプションを設定できます。

#### --system

これは、システム全体の設定です。 このコンピュータ上のすべてのユーザに適用されます。

#### --global

これは、ユーザレベルの設定です。 該当ユーザのユーザアカウントにのみ適用されます。

#### --local

これは、リポジトリレベルの設定です。 設定されている特定のリポジトリにのみ適用されます。

> git configのデフォルト値は、`--local`です。

### 設定の表示

どの設定が自動的に追加されたのかを確認する場合、`git config --list`と入力します。 これにより、３つの設定ファイルそれぞれを自動的に読み込み、設定ファイルの設定をリスト表示します。

```sh
git config --list
```

また、リストオプションの前に含めることで、リストを特定の設定レベルに絞り込むこともできます。

```sh
git config --global --list
```

### ユーザ名とメールの設定

Gitは、ユーザ名とメールアドレスの設定を使用して、作成されるコミットのそれぞれに一意のフィンガープリント（識別情報）を生成します。 この設定なしでは、コミットを作成できません。

```sh
git config --global user.name "First-name Surname"
git config --global user.email "you@email.com"
```

**例:**

```sh
git config --global user.name "Mona Octocat"
git config --global user.email "mona@github.com"
```

> **Tip:** もし config プロパティの設定を間違えた場合も心配はいりません。ダブルクオートで囲んだ値で同じ `git config` コマンドを再実行することで、プロパティを新しい値で更新することができます。 もし、プロパティの名前を間違えた場合は、下記のコマンドでプロパティを削除することができます:
>
> ```sh
> git config --global --unset <property_name>
> ```

#### Gitの設定とプライバシー

この演習の手順では、あなたの` user.name `と` user.email `の設定を識別するとき、`--global`フラグを使用します。 現在、個人のアカウントを使用せずにコンピュータを使用している場合は、 `--global`を適用しないでください。 この方法によって、設定は、本クラスで割り当てたリポジトリにのみ保存されます。 同じコンピュータ上の別のリポジトリで作業する場合は、この設定オプションを再度設定する必要があります。

> 例えば
>
> ```sh
> git config user.email "you@email.com"
> ```

ユーザの名前とメールアドレスは、Gitでユーザが作成したコミットに自動的に保存されます。 メールを非公開にしたい場合は、GitHubによって、そのユーザアカウント用の返信受付不可のメールアドレスを生成することができます。 [Settings > Emails セクション](https://github.com/settings/emails)の**Keep my email address private**をクリックしてください。 この機能を有効にしたら、自動的に生成された` ID +username@users.noreply.github.com `をメールを設定するときに入力するだけです。

> 例えば
>
> ```sh
> git config --global user.email 18249274+githubteacher@users.noreply.github.com
> ```

### Autocrlfの設定

```sh
//for Windows users
git config --global core.autocrlf true
//for Mac or Linux users
git config --global core.autocrlf input
```

異なるシステムでは、行末と行区切りについて異なった扱いがされます。 他のシステムで作成されたファイルを開き、この一連の設定をしていない場合、Gitは、ファイルを開いたあなたが、その種類のファイルを扱うあなたのシステムの設定に基き、変更を加えたものとみなします。

> ヒント：` autocrlf `は、auto carriage return line feed の略語です。
