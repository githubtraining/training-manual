## クラスの受講準備

授業開始を待っている間、数分間で、ローカルの作業環境を設定してください。

<!-- toc -->

### ステップ1：GitHub.comアカウントの作成

このクラスでは、GitHub.comのパブリックアカウントを使用します。 それには、いくつかの理由があります。

- 実際のコードを含むリポジトリで、「練習」して欲しくはないため
- コードなどの修正方法を教えるために、そのいくつかを変更するため （ついては、上記の箇条書きを参照してください）

お持ちでない場合は、次のステップで無料アカウントを作成できます。

1. GitHub.comにアクセスし、「Sign up」をクリックします。
2. 無料のアカウントを選択します。
3. 指定したメールアドレスに、確認メールが届きます。
4. リンクをクリックして、認証手続きを完了します。

もし、すでにアカウントをお持ちの場合は、組織のネットワーク内からgithub.comに接続できるかご確認ください。

GitHubは、主要なブラウザの現在のバージョンで動作するようデザインされています。[サポートされているブラウザ](https://docs.github.com/github/getting-started-with-github/supported-browsers)については、こちらをご参照ください。

### ステップ2：Gitのインストール

Gitは、オープンソースのバージョン管理アプリケーションです。 このクラスの受講にあたり、Gitをインストールする必要があります。

すでにGitをインストールしているかもしれませんね。確認してみましょう！ Macを使用している場合はターミナル、Windowsマシンの場合はPowerShellを開き、次のように入力します。

```sh
git version
```

次のように表示されます。

```shell-session
$ git version
git version 2.33.1
```

一般的には、Git の [最新バージョン](https://git-scm.com/downloads) から2つのマイナーバージョンの範囲を利用することを推奨します。このマイナーバージョンは、 `x.x.x` の並びのうちの2番目の数字です。

Git for Windows または Git Bash を利用している場合、[2.29.2](https://github.com/git-for-windows/git/releases/tag/v2.29.2.windows.2)以上のバージョンをお勧めします。

#### Gitのダウンロードとインストール

Gitをまだインストールしていない場合は、 www.git-scm.com からGitをダウンロードできます。

Gitのインストールについてさらに資料が必要な場合は、ProGitの章にあるGitのインストールに関する追加情報を参照してください。`http://git-scm.com/book/en/v2/Getting-Started-Installing-Git`

#### シェルはどこにあるのか

Gitで使いたいコマンドラインアプリケーションへのショートカットを作成してみましょう。

- Windowsで作業している場合は、Gitパッケージでインストールされた` Git Bash ` 、または、[Posh-git](http://dahlbyk.github.io/posh-git/)でPowershellを使用します。
- Macやその他のUnixベースのシステムで作業している場合は、ターミナルアプリケーションを使用します。

### Step 3: HTTPS でクローンしてみる

選択したシェルを開き、下記を入力します。

```sh
git clone https://github.com/githubschool/scratch.git
```

クローンが成功する場合は、下記のように表示されます。

```shell-session
$ git clone https://github.com/githubschool/scratch
Cloning into 'scratch'...
remote: Counting objects: 6, done.
remote: Compressing objects: 100% (2/2), done.
remote: Total 6 (delta 0), reused 0 (delta 0), pack-reused 0
Unpacking objects: 100% (6/6), done.
```

もしクローンが失敗する場合、[authenticating with GitHub from Git](https://docs.github.com/github/getting-started-with-github/set-up-git#next-steps-authenticating-with-github-from-git) をご参照ください。留意点: 企業のネットワークでは SSH のトラフィックを遮断している場合もあるので、HTTPS での利用を推奨しています。クラスの受講前にクローンが可能かどうかご確認ください。また、2段階認証を有効にしていて HTTPS を利用する場合は、[パーソナルアクセストークンのセットアップ](https://docs.github.com/github/authenticating-to-github/accessing-github-using-two-factor-authentication#using-two-factor-authentication-with-the-command-line)が必要になります。

#### プロキシの設定

もし、所属する組織でプロキシを利用している場合は、Git でプロキシの設定を行う必要があります。 Git Bash (Windowsの場合) またはターミナル (Mac または \*nux の場合) を開き、下記の手順を実行してください。

**プロキシが認証不要の場合:**

```sh
git config --global http.proxy https://YOUR.PROXY.SERVER:8080
```

`YOUR.PROXY.SERVER` はご利用のプロキシのURLに置き換えてください。

**プロキシが認証を要求する場合:**

```sh
git config --global http.proxy https://YOUR_PROXY_USERNAME:YOUR_PROXY_PASSWORD@YOUR.PROXY.SERVER:8080
```

`YOUR_PROXY_USERNAME` および `YOUR_PROXY_PASSWORD` を、それぞれプロキシの認証で利用するユーザー名とパスワードに置き換え、`YOUR.PROXY.SERVER` をご利用のプロキシのURLに置き換えてください。

### ステップ4：テキストエディタの設定

このクラスでは、コードの取り扱いにおいて、ベーシックなテキストエディタを使用します。 何らかのテキストエディタをインストール済で、コマンドラインから作業できる状態になっていることを確認しましょう。

#### エディタの選択

ほぼすべてのテキストエディタを使用できますが、最適なエディタは次のとおりです。

- [Visual Studio Code](https://code.visualstudio.com)
- Notepad
- Vi or Vim
- Sublime
- Notepad++
- GitPad

まだテキストエディタをインストールしていない場合は、上記のエディタを１つダウンロードしてインストールしてください。また、Visual Studio Code を Git コマンドで利用するデフォルトのテキストエディタとして設定するには、[docs.github.com のこちらの手順](https://docs.github.com/github/using-git/associating-text-editors-with-git)をご参考ください。

#### コマンドラインでのエディタ

エディタをインストールしたら、コマンドラインから開けるかどうかを確認します。

適切にインストールされている場合、次のコマンドでカレントディレクトリを Visual Studio Code で開くことができます。

```sh
code .
```

---

### リサーチ

おめでとうございます。 これで、あなたのシステムに、作業できるバージョンのGitとテキストエディタがあるはずです。 クラス開始前にまだ時間がある場合は、以下の興味深い資料をご覧ください。

- **[github.com/explore](https://www.github.com/explore)** - Exploreでは、GitHub Universeにおける興味深いプロジェクトを展示しています。 後で再度見てみたいプロジェクトはありましたか？ 後で見つけやすくするために、リポジトリにStarを付けましょう。
- **[lab.github.com](https://lab.github.com)** - GitHub Learning Lab では、ボットがプロジェクトを案内してくれ、各手順を実践できるように、即座に GitHub リポジトリからのフィードバックを与えてくれます。
