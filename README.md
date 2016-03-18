# GitHub Training Manuals

Welcome to the GitHub Training Manual repo. In this repo, you will find the content for all of the materials used by GitHub trainers during our official training courses. This includes:

| Course | Manual File |
| ------ | ---------- |
| GitHub for Developers             | `gh-for-devs.adoc` |
| GitHub for Developers w/Eclipse   | `gh-with-eclipse.adoc` |
| Git Essentials                    | `git-only.adoc` |

This project uses the Asciidoc format for the text of the manual. The manuals are generated using the `asciidoctor-pdf` project.

## How To Generate the Manuals

Each manual supports two versions, a student version and a facilitator version. Select the version of the file you would like to generate by designating the appropriate theme and book as follows:

#### Student Manual

`asciidoctor-pdf -a pdf-stylesdir=theme -a pdf-style=manual -a pdf-fontsdir=fonts <manual.adoc>`

#### Facilitator Manual

`asciidoctor-pdf -a pdf-stylesdir=theme -a pdf-style=manual -a pdf-fontsdir=fonts -a fac-notes <manual.adoc>`
