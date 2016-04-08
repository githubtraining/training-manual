# GitHub Training Manuals

Welcome to the GitHub Training Manual repo. In this repo, you will find the content for all of the materials used by GitHub trainers during our official training courses. This includes:

| Course | Manual File |
| ------ | ---------- |
| GitHub for Developers             | `gh-for-devs.adoc` |
| Git Essentials                    | `git-only.adoc` |

This project uses the Asciidoc format for the text of the manual.

## How To Generate the Manuals

Each manual supports two versions, a student version and a facilitator version. To create both manuals for a given class,
run:

`script/generate-manual <manual-name>`

where `<manual-name>` is one of the Asciidoc-formatted docs listed in the table above. If you want to generate manuals for every class, run:

`script/setup`
