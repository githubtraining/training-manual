# GitHub Training Manual: GitHub for Developers 

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

Docsify doesn't currently support creating PDFs, but you can generate one using [GitBook](https://toolchain.gitbook.com/ebook.html). We've tried to make this simple for you by creating [`script/generate-pdf`](script/generate-pdf).

## Teaching scripts

Scripts that accompany the manual, and their documentation can be found in the [`script/`](script/) directory.
