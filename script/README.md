# GitHub Training Scripts

This directory contains several scripts used to set up and facilitate our classes.

## First Time Usage

### Remote Configuration

To use these scripts, please follow these steps **first**:

- [ ] Create an organization on your instance (if not using github.com) called `githubtraining` and import the template repos there: caption-this, polygons, github-games (all included within the same release as the `training-manual` repository). Ensure your newly created repos contain all the branches as were included in this release.
- [ ] Create a separate org where you will house the disposable teaching repos
- [ ] Give your user account(s) admin access to the disposable repos org
- [ ] Create a [Personal Access Token](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line/) for your user account
- [ ] Decide whether you want to do 1:1 appointments. If not, comment out those lines of code
- [ ] Set up a survey account and survey on SurveyGizmo, or comment out those lines of code

### Local Configuration

You will need to do the following while checked out to this branch (these only work for Bash right now, so if you are using ZSH you will need to set these ENV vars manually):

- run `script/teach-class` and choose option 0
- for the TOKEN_OWNER, type `githubteacher`
- for the INSTANCE_URL, type `api.github.com`
- for the CLASS_ORG, type `githubschool`
- In addition to the above ENV variables, you will need to set a few more for the 1:1 Appointment URL and the Survey:
  - `echo "export APPT_URL='APPT_URL_HERE'" >> ~/.bashrc`
  - `echo "export SURVEY_TOKEN='SURVEY_TOKEN_HERE'" >> ~/.bashrc`
  - `echo "export SURVEY_SECRET='SURVEY_SECRET_HERE'" >> ~/.bashrc`
  - `echo "export SURVEY_CAMPAIGN='SURVEY_CAMPAIGN_HERE'" >> ~/.bashrc`
- exit your terminal session and start a new one
- run `script/teach-class` and enjoy!

## Class Scripts

### script/teach-class

This script is used to run an entire class and is comprised of some of the scripts that are identified below.

**Usage:** `script/teach-class`

> Note: 
> This requires [jq](https://stedolan.github.io/jq/) to be installed. Installation instructions are provided [here](https://github.com/stedolan/jq/wiki/Installation). The first time you execute `script/teach-class`, choose option `**0**` to configure the script within your organization.


### script/new-virtual

_This is contained within the `teach-class` script._

This script is used to create a new class repository for GitHub for Developers based on the class template based on the virtual class content.

**Usage:** `script/new-virtual REPO-NAME`

### create-conflict-repos

_This is contained within the `teach-class` script._

This script is used to create a unique repository for each user to practice resolving merge conflicts. It pulls the names from the repository used on day 1.

**Usage:** `script/create-conflict-repos`

### check-conflict-repos

_This is contained within the `teach-class` script._

This script is used to check whether students have resolved the merge conflicts in their individual repos and writes those results back to the day 1 repo.

**Usage:** `script/check-conflict-repos`

### create-game-repos

_This is contained within the `teach-class` script._

This script is used to create an individual game repository for each student where they will learn how troubleshoot using log, show, diff, bisect, etc. It pulls the names from the repository used on day 1 and will also create a repo for githubteacher.

**Usage:** `script/create-game-repos`

### check-game-repos

This script is used to determine whether the students successfully fixed their game and writes those results back to the day 1 repo.

**Usage:** `script/check-game-repos`

### reset-game

This script is used to reset the github-games repository in githubschool using the template in githubtraining. It will also delete the copy of the game from the githubteacher account.

**Usage:** `script/reset-game`

# Other Scripts

### bootstrap

This script allows those who clone it for the first time to ensure they have the proper dependencies to run all other scripts locally.

> Note: This requires Ruby.

**Usage:** `script/bootstrap`

### cibuild

This script is used GitHub's building of the manual using CircleCI and GitBook.

**Usage:** Only used in the `.circle` file during CircleCI's build. Not recommended to use locally.

### deploy

Used in GitHub's deployment of the manual using CircleCI and GitBook.

**Usage:** Only used in the `.circle` file during CircleCI's build. Not recommended to use locally.

### server

When you are making changes locally and want to check how they look, use this script to host the webpage on a local server.

**Usage:** `script/server`

### setup

Uses GitBook to produce the manuals for all classes.

**Usage:** Typically used within other scripts, such as `script/server` and `script/deploy`.
