## Partner activity: Create a failing PR

You and a partner will work together through this activity. To help with this, we'll separate the instructions by indicating `Partner A` and `Partner B`. Get together with your partner and decide who'll take on each role.

#### `PARTNER A` Create a broken build
- Add a reference to your partner's repository using:
  - `git remote add <name-of-remote> <url>`
    - Example: `git remote add partner https://github.com/githubteacher/github-games`
- Go to your partner's project and examine their `.yml` file. What is some code that would cause a pull request to fail based on their tests?
- Follow the GitHub flow to open a pull request introducing commits that will cause the tests to fail on your partner's repository.

#### `PARTNER B` Respond to a failing build
- Find the pull request opened by your partner in your own repository. It should have a failing build status.
- Use failing build's output to figure out why the build is breaking.
- Review the pull request formally, requesting changes, with recommendations on what to change so that the build will pass.

#### `PARTNER A` Fix the broken build
- After your partner has reviewed your pull request, make the changes they suggest (whether or not you think they are correct).

#### `PARTNER B` Merge the successful build
- When the build is passing, merge the pull request and celebrate! :tada:
