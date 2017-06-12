## Partner activity: Create a failing PR

#### Part 1: Working on another repository
- Partner up with another participant and add their repository as another remote to your own local repository.
  - `git remote add <name-of-remote> <url>`
  - Example: `git remote add partner https://github.com/githubteacher/github-games`
- Go to their project and look at their `.yml` file. What is some code that would cause a pull request to fail based on their tests?
- Follow the GitHub flow to open a pull request introducing commits that will cause the tests to fail on your partner's repository.

#### Part 2: Back in your own repository
- Find the pull request in your own repository that has a failing build status.
- Use build output to figure out why the build is breaking.
- Review the pull request formally, requesting changes, with recommendations on what to change so that the build will pass.

#### Part 3: In your partner's repository
- After your partner has reviewed your pull request, make the changes they suggest (whether or not you think they are correct).

#### Part 4: In your own repository
- When the build is passing, merge the pull request and celebrate! :tada:
