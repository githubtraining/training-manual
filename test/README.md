# Testing the Training scripts
This directory houses the scripts used to validate the proper execution of the scripts in the sister script directory.

USAGE: (from the training-manual directory)
```
$ ./script/test [repo-name]
```
If a repo-name is not passed as $1, then a test repo name of the format 'zTest_YYYYMMDD_HHMMSS' will be used

The training-manual/script/test script is intended to exercise the suite of scripts called by training-manual/script/teach-class.
Prior to executing training-manual/script/test, you must first run training-manual/script/teach-class Option 0 to establish your ~/.trainingmanualrc file.

The scripts in this directory may be called individually
- e.g. us1-validate-caption-this-repo \<existing-repo-name\>

## lint-scripts
This script shellchecks the scripts in the training-manual/script/ and training-manual/test directories to ensure that they adhere to the coding standards of the shell declared in the shebang statement.

## us-common-functions
This script is sourced from all other us* scripts and it contains the functions called from at least two other scripts. It contains the following functions:
- addErr() - Adds an error to the ERRORS array to be displayed when printErrors() is called
- checkAccessToAPI() - Validates userID:PAT combination is valid
- checkBranchesOnRepo() - Validates the expected list of branches in the repo (e.g. same as the template repo)
- checkCommitsOnRepo() - Validates the expected number of commits in the repo (e.g. same as the template repo)
- checkIssueNum() - Validates the expected Issue # exists in the repo
- checkIssueTitle() - Validates the expected title of the Issue in the repo
- checkOpenIssueCount() - Validates the expected number of open Issues in the repo
- checkOpenPRCount() - Validates the expected numbert of open PRs in the repo
- checkOpenProjectCount() - Validates the expected number of open Projects in the repo
- checkPRTitlesOnRepo() - Validates the expected titles of the PRs in the repo
- checkParamCount() - Validates the expected number of passed parameters to a function
- checkRepoExists() - Validates the existance of a repo by name
- checkTrainingmanualrcFile() - Validates that $HOME/.trainingmanualrc exists
- containsElement() - Validates a value is an element in an array
- fileExistsInRepo() - Validates an expected file exists in a repo
- getRepoCommitCount() - Returns the number of commits in a repo
- isPrivate() - Validates a repo is Private
- isPublic() - Validates a repo is Public
- log() - Appends a line to the ./test.log file
- printErrors() - Displays the list of errors encountered

## us0-confirm-setup
This script validates that the person executing the script has successfully executed training-manual/script/teach-class, Option 0.

## us1-create-caption-this-repo
This expect script emulates an instructor running training-manual/script/teach-class, Option 1.

## us1-validate-caption-this-repo
This script validates that training-manual/script/teach-class, Option 1 has successfully completed.

## us2-add-commenters-to-issue1
This script adds comments to Issue #1 of the class repository. It contains the following function:
- addComment() - Adds a comment to an Issue in a repo

## us2-create-collabs-and-files
This expect script creates collaborators from the commenters to Issue #1 and it creates files for each commenter in the _posts directory of the class repository.

## us2-validate-collabs-and-files
This script validates that training-manual/script/teach-class, Option 2 has successfully completed. It contains the following function:
- setFilenum() - Increments the file number for the 0000-01-$number-$loginID.md files

## us3-grade-day1-repo
TBD

## us4-create-conflict-repos
This expect script emulates an instructor running training-manual/script/teach-class, Option 4.

## us4-validate-indiv-conflict-repos
This script validates that training-manual/script/teach-class, Option 4 has successfully completed.

## us5-grade-day2-repos
TBD

## us6-create-game-repos
This expect script emulates an instructor running training-manual/script/teach-class, Option 6.

## us6-validate-indiv-gh-games-repos
This script validates that training-manual/script/teach-class, Option 6 has successfully completed.

## us7-expire-student-repos
TBD
