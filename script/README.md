# Class scripts

This directory contains several scripts used to set up and facilitate our classes.

### script/teach-class

This script is used to run an entire class and is comprised of some of the scripts that are identified below. 

**Usage:** `script/teach-class`

> Note: The first time you execute `script/teach-class`, choose option `**0**` to configure the script within your organization.

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
