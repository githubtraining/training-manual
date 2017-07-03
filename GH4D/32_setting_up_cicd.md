## Setting Up CI/CD

We are going to start with tests built in to `github-games`, a repository we've already been working in.

1. Visit the CI/CD integration site.
1. When prompted to create a new account or log in, authenticate with GitHub.
1. Add a new project, selecting the `github-games` repository. (Be careful to only select the appropriate repositories, not _all_ repositories.)

You may not see anything happen just yet. CI/CD services look for a special `.yml` file with configuration information. This file will contain information about the language of the project, dependencies, what tests to run, and how to build any deployments.
