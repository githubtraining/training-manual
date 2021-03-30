# GitHub Training Manual

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](CODE_OF_CONDUCT.md)

Welcome to the GitHub Training Manual repository. In this repository, you will find the content used by the [GitHub Professional Services](https://services.github.com/) team during our official GitHub training courses and the scripts used when teaching.

The content is all written in [Markdown](https://guides.github.com/features/mastering-markdown/), and the scripts are shell scripts.

## Technologies used

This manual is served using GitHub Pages and [docsify](https://docsify.js.org), and can be found at [githubtraining.github.io/training-manual](https://githubtraining.github.io/training-manual/#/).

## Goals and scope

The goal of this project is to serve as a content source for training on Git and GitHub. While GitHub, select GitHub Partners, and select customers may have their own use case directly with GitHub, the content is open source so we can share and improve as a community. You can find more information on contributing in the [contributing guide](CONTRIBUTING.md).

The topic scope is limited to GitHub's core product features, on GitHub.com and also for GitHub Enterprise users.

## Deploy the manual

These manuals are designed to be generated using [docsify](https://docsify.js.org). To get your own manuals up and running, all you have to do is:

1. Fork this repository
2. In your fork, click on **Settings**
3. Scroll down to the GitHub Pages section, and set **Source:** to `master branch /docs folder`.
4. Click **Save**.
5. Return to the GitHub Pages section of Settings, and you'll receive the URL of your published manual.

## Make changes

The official [docsify documentation](https://docsify.js.org/#/?id=docsify) is your best bet for getting up to speed with the tool.

In general, you'll find all of the manual content in the [`docs/`](docs/) folder of this repository. All content is written in Markdown, and it's all stitched together in [`docs/_sidebar.md`](docs/_sidebar.md), which specifies the order and hierarchy of the content.

## Preview changes on your machine

You can install, and serve the contents of the `docs/` folder locally with minimal setup. The steps are thoroughly described in the [doscify quick start](https://docsify.js.org/#/quickstart) guide.

You can also simply run the following scripts:

```shell
script/bootstrap
script/server
```

## Generate a PDF

Docsify doesn't currently support creating PDFs, but you can generate one using [GitBook legacy](https://docs.gitbook.com/resources/gitbook-legacy). We've tried to make this simple for you by creating [`script/generate-pdf`](script/generate-pdf).  The legacy version of GitBook is being shut down soon, but it still works.  You'll need to follow the installation instructions below to install GitBook.  The previous installation instructions on the GitBook site have been removed.

## GitBook dependency

1. Download and install [Calibre](https://calibre-ebook.com/download).

1. Run Calibre once to set up the application.

1. Make sure that the [Calibre command line interface](https://manual.calibre-ebook.com/generated/en/cli-index.html) is available on your path.  This is located at `/Applications/calibre.app/Contents/MacOS/` on macOS if you are running the application from the default location.

## Teaching scripts

Scripts that accompany the manual, and their documentation can be found in the [`script/`](script/) directory.

## License

Please see the [license](LICENSE) for detailed information. When using the GitHub logos, be sure to follow the [GitHub Logos and Usage](https://github.com/logos) guidelines.
