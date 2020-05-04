# GitHub Training Manual: GitHub for Developers

[![Contributor Covenant](https://img.shields.io/badge/Contributor%20Covenant-v2.0%20adopted-ff69b4.svg)](code_of_conduct.md)

Welcome to the GitHub Training Manual repo. In this repo, you will find the content used by GitHub trainers during our official training courses and scripts used when teaching.

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

## GitBook installation

1. Install the GitBook CLI via NPM.

   ```shell
   npm install gitbook-cli -g
   ```

1. Download and install [Calibre](https://calibre-ebook.com/download).

1. Run Calibre once to set up the application.

1. Make sure that the [Calibre command line interface](https://manual.calibre-ebook.com/generated/en/cli-index.html) is available on your path.  This is located at `/Applications/calibre.app/Contents/MacOS/` on macOS if you are running the application from the default location.

## Teaching scripts

Scripts that accompany the manual, and their documentation can be found in the [`script/`](script/) directory.
