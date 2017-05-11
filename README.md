# GitHub Training Manuals

Welcome to the GitHub Training Manual repo. In this repo, you will find the content for all of the materials used by GitHub trainers during our official training courses.

## How To Generate the Manuals

These manuals are designed to be generated using CircleCI for continuous integration and deployment. If you fork this repository, you will need to set up the integration one time for it to work.

## Making Changes

Each manual is built from summary files. The summary file includes other pieces in the `book` directory. Once CircleCI is set up, simply change these files on the master branch to generate new manuals on the gh-pages branch.

Remember, changing just one file will impact the other manuals, so be intentional about your changes.

## Adding New Manuals

We can create as many manuals as we'd like from this content, and have it all rendered in the same way. Here are the steps to creating a new manual:
- Create a new summary file based on the existing summary files in the `book` directory.
- In the `script/cibuild` file, add this chunk of code. Try to add it in a logical place in context of the other manuals.
        ```
        # create <description> course
        mv book/<NAME-OF-SUMMARY-FILE>.md book/SUMMARY.md

        echo "==> Building book"
        gitbook build

        echo "==> Generating PDF"
        gitbook pdf . <COURSENAME>.pdf

        mv _book/ <COURESNAME>/

        mv book/SUMMARY.md book/<NAME-OF-SUMMARY-FILE>.md
        ```
- In the `script/deploy` file, make changes so the files are all added in the appropriate places. The best way to do this is to follow the conventions for the existing manuals. Generally, you will want to accomplish these steps:
  - After removing the vendor file but before checking out to the `gh-pages` branch, move the PDF and directory for the manual to a temporary directory.
  - Remove the existing pdf and directory for the manual. Without this step, the new manual won't have anywhere to go.
  - Move the temporary pdf and directory to the permanent names.
  - Update the `index.html` file on the `gh-pages` branch to reflect the new URL and description for the manual.
  
## Next Steps

Once this is sorted here, we may want to merge this (and the general concept) into the proper training-manual repository so that all changes to curriculum are reflected in all courses.
