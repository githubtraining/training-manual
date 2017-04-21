# GitHub Training Manuals

Welcome to the GitHub Training Manual repo. In this repo, you will find the content for all of the materials used by GitHub trainers during our official training courses.

## How To Generate the Manuals

First, ensure that you've installed all the required dependencies by runing:

`script/setup`

This will also generate student facilitator copies of the manual in Markdown, HTML, and PDF.

To serve the manuals as a Jekyll web page, run:

`script/server`

To generate a manual other than _GitHub for Developers_ run:

`script/generate-manual <manual-name>``

where `<manual-name>` is one of the `*.md` files in this project's root directory.
