## Interacting with CI/CD

### Workflow Review: Updating the README.md to Pass the Tests

Now you will practice the GitHub Flow from beginning to end by updating the link in the README to point to your fork of the repository.

> Remember, your copy of the website will be rendered at `https://githubschool.github.io/github-games-username`.

> If you access this URL, you will see the text in the `README.md`. We have intentionally broken this repository so we can fix it together. The tests that we are merging also check for this URL.

The current test is looking to see if the URL in the `README.md` is correct. Using the GitHub flow, create a pull request that will have a failing build and **doesn't** have the correct URL. Our current test is found here: `tests/test_verifyurl.rb`

The purpose of this section is to practice the workflow, looking at the test, and deciphering the error messages in a failing build. It can be overwhelming to look at all of the tool's feedback! If you'd like to dig in deeper, please do so, but if it feels like too much, focus on looking for the error message so you know what to fix.


1. Clone your copy of the repository: `git clone https://github.com/githubschool/github-games-USERNAME.git`.
1. Checkout to the branch that is in the pull request, `git checkout CISERVICE-tests`.
1. Edit the URL in the `README.md` so the tests will pass.
1. Commit the changes to your branch.
1. If desired, you can check this test locally by running `ruby tests/test_verifyurl.rb` on this branch. Notice how different it will look on everyone's machines, and how having the tests run externally will smooth out the process. _(For this to work, you will need Ruby installed locally.)_
1. Push your branch to GitHub: `git push`
1. See that the tests are passing. If they aren't passing, look at the test to see what changes you still need to make.
1. When all tests are passing, merge your Pull Request.
1. Delete the branch on GitHub.
1. Update your local copy of the repository: `git pull --prune`
