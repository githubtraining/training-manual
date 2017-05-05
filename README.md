# GitHub Training Manuals

Welcome to the GitHub Training Manual repo. In this repo, you will find the content for all of the materials used by GitHub trainers during our official training courses.

## How To Generate the Manuals

These manuals are designed to be generated using CircleCI for continuous integration and deployment. If you fork this repository, you will need to set up the integration one time for it to work. 

## Making Changes

The manual is built from a file called `book/SUMMARY.md`. That includes other pieces in the `book` directory. Once CircleCI is set up, simply change these files on the master branch to generate new manuals on the gh-pages branch. 

For the CI/CD class that is standalone from GitHub from Developers:
- Edit `book/SUMMARY_CICDONLY.MD`
- It will be displayed at: https://brianamarie.github.io/training-manual-1/onlycicd/index

For the CI/CD class that is delivered as a part of a full GitHub for Developers offering:
- Edit `book/SUMMARY_CICD_FULLGH4D.md`
- We want it displayed here, but it is not functional yet: https://brianamarie.github.io/training-manual-1/fullcicd/index

## Next Steps

Once this is sorted here, we may want to merge this (and the general concept) into the proper training-manual repository so that all changes to curriculum are reflected in all courses. 
