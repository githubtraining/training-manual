# Class Design
Primary aim: give attendees first experience actually "practicing" CI/CD, and show them it's not just theoretical or unattainable. Given the assumed student background outlined below, the tooling is kept simple: a Jekyll site deployed to Heroku, and integration with Travis.

[Accompanying slides here](https://github.box.com/s/qg0nwyagsv72dmnfb5bqqo8ywprp8avf).

## Intended Audience
Assume attendees:
- have awareness, though limited and possibly inaccurate understanding, of CI/CD principles and practices
- have little to no knowledge of or exposure to the capabilities of our API, including 3rd party tooling that makes use of it
- know Git, GitHub at the level of someone who's taken [GitHub for Developers](https://training.github.com/classes/developers/)

## Public description
Title: "Getting started with GitHub + CI/CD"

GitHub makes it easy to collaborate on code, but its true power comes when used as the centerpiece of a modern deployment pipeline. This class will start with an overview of the concepts behind continuous integration (CI) and continuous delivery (CD), two cornerstones of good software development. After that, we'll cover how to start incorporating these practices into your workflow, by using GitHub to integrate with best-of-breed 3rd party tools.

This class is designed for those with intermediate Git and GitHub knowledge, but limited hands-on experience implementing CI/CD practices.

**NOTE** Please sign up for a [Heroku](https://signup.heroku.com/www-header) account *before class* (it's free). Each student will use their individual Heroku account to deploy their own verson of a sample app.

## Class Mechanics
The class uses [this template repo](https://github.com/githubtraining/cicd-demo), which each student will import and work on as they follow along. Demonstrate all the steps using `githubteacher` account, i.e. import the repo anew each class. **NOTE**: make sure to delete this `githubteacher` repo, delete the Heroku app, and re-sync Travis when done, so each class starts from the same state.


# Class Outline

## Demo
Show what attendees will be able to do by the end of class: push a change to GitHub -> see tests pass -> merge and watch changes auto-deploy.


## Conceptual Overview
Using [the first 13 slides](https://github.box.com/s/qg0nwyagsv72dmnfb5bqqo8ywprp8avf) to provide:
- short, heuristic overview of old SDLCs
- what and why of CI/CD
- the role of GitHub


## Activities

### Build a Simple Jekyll Site
This section does bare minimum to get every student to have their own site up and running.

1. lab: have students import [template repo](https://github.com/githubtraining/cicd-demo) via `import.github.com`
  - import rather than fork so that students' PRs don't automatically target the template repo
1. lab: set up Heroku project and manually deploy to confirm site works
  - show *Settings > Webhooks & Services* before and after Heroku linked to repo, to demystify the process and lead into high-level explanation of how the integration works
  - from Heroku dashboard (`https://dashboard.heroku.com`), click `+` icon in upper right corner
    - students will need to pick unique names for their Heroku URLs (can't use demo name); have them update repo URL accordingly
  - from *Deploy* tab on next page, click *Connect to GitHub* icon, follow steps, then click *Deploy Branch* button at bottom of page
    - use Heroku as "production server"
    - serve site from Heroku only to avoid potential trouble w/ local builds (e.g. b/c Jekyll doesn't officially support Windows)
  - instruct students to change `url` in `_config.yml` to match name of their Heroku app
    - can also have them change `email`, `github_username`


### Reinforce GitHub Flow
Make sure TravisCI is *not* turned on yet for the demo repo.

1. lab: use GitHub Flow to introduce a broken link into an existing post (edit a file locally, since that's how most work done)
  - remind class about Git, PR best practices
  - merge PR, deploy manually via Heroku, and see error "in prod"
1. lab: use quick PR flow to fix error in web UI
  - merge PR, deploy manually via Heroku, and see fix "in prod"


### Introduce CI
This section has students start to use things already in repo (e.g. `script/cibuild`). Not writing tests or scripts from scratch, to abstract away language and platform specific issues.

1. explain: CI fundamentals
  - see accompanying slides
  - describe:
    - how `htmlproof` gem used (already included in `Gemfile`, but unused to this point)
    - how `script/cibuild` (also already in repo, but thus far unused) automates build/test procedure
  - avoid running tests locally (same reason as above given for avoiding local builds)
1. lab: hook up Travis
  - show *Settings > Webhooks & Services* before and after repo linked to Travis, give high-level overview how the integration works
    - explain difference between *Webhooks* and *Services* sections
    - mention [integrations directory](https://github.com/integrations)
  - enable *Build pushes* to trigger a build for a new commit, even if it was made via GitHub's web UI (i.e. not "pushed")
    - when pushing multiple commits, it builds only the latest revision
  - disable *Build pull requests*
    - it will actually run your tests against the merged version of the *base* and *compare* branches, i.e. a new ref, but still associate the resulting status with the tip of the *compare* branch; Travis will not run this test if merge conflicts exist
  - enable *Build only if .travis.yml is present*
    - explain purpose of `.travis.yml` file (already in repo, but thus far unused)
1. lab: using GitHub Flow, adding broken link to 3rd party tool of choice, in an existing post (don't merge though)
  - show PR view w/ commit statuses
  - explain benefits, tie back to content in slides:
    - caught error in development, where much easier to fix
    - greater visibility into project status, via single UI, for all involved
      - can get quick check via GitHub UI, deep links for detailed results
    - Travis creates a new, vanilla VM for each build (i.e. no state persists),
      - automated provisioning makes for consistent test env, helping ensure you're testing only your latest changes
1. lab: fix the error, discuss, wait for tests to pass, merge, manually deploy


### Further Details on CI Integration, Status API
- explain: CI status incorporated into other aspects of web UI
  - repo branches view includes statuses for each branch
- describe (demo?) convention of including build status button in `README.md`
- demo: search PRs by build status w/ `status:<state>` syntax
- explain: [status API](https://developer.github.com/v3/repos/statuses/#statuses)
  - API is how all 3rd party tools integrate w/ GitHub
  - status API is how one associates a state with a ref (typically a branch or commit)
  - [status for single ref](https://developer.github.com/v3/repos/statuses/#create-a-status)
    - `status` can be `failure`, `error`, `pending`, or `success`
- (WIP) demo: use `script/add-status.sh` to add status to same commit Travis last built
  - show multiple statuses in PR view
  - explain [combined status for specific ref](https://developer.github.com/v3/repos/statuses/#get-the-combined-status-for-a-specific-ref)
    - `status` can be `failure`, `pending`, or `success`


### Incorporate Protected Branches, Required statuses
- explain: great to catch errors in PR, but what if you want/need an software (not cultural) gate?
- demo: turn on protected branches and required statuses for `master`
  - show UI view
  - protected branches "prevent you from rewriting history"
    - ex use case: keeping history auditable
  - in principle, one can use required statuses to [define arbitrary criteria for mergeability](https://help.github.com/articles/defining-the-mergeability-of-pull-requests/)


### Demo Deploy API, Branch Deploys to Arbitrary Envs
1. lab: open a new PR w/ w/ link to [Aman's post about GitHub branch deploys](http://githubengineering.com/deploying-branches-to-github-com/)
  - wait for green status
1. lab: deploy a GitHub Branch via Heroku
  - show shipit squirrel in PR view:
    - link to deployed env in this case
    - could also create description status
    - see [Deployment Status API](https://developer.github.com/v3/repos/deployments/#create-a-deployment-status)
  - explain: devs and ops both have greater visibility into where WIP is deployed


### Introduce CD
1. explain: at this point, have what some call continuous delivery -- still doing manual deploys
1. explain: next goal is set up automatic deployments, thereby achieve continuous deployment
1. lab: enable *automatic deploys* on Heroku, including *wait for CI to pass* option
  - explain: this approach abstracts away almost all real-world difficulties -- see Infrastructure slide
1. lab: use GitHub flow to make new change, confirm tests pass, then merge and watch site auto-update


## Post-Class Poll
[Initial version here](https://global.gotowebinar.com/survey/create.tmpl?webinar=1516541364247788546)
