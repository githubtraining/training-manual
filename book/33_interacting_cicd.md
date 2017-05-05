## Interacting with CI/CD

#### Interacting with tests ~30-45 minutes
- The current test is looking to see if the URL in the `README.md` is correct. Using the GitHub flow, create a pull request that will have a failing build and **doesn't** have the correct URL.
- Fix broken PR by looking at error messages.
- See status set to green, then merge.

##### Detailed Instructions
1. Make a Pull Request within your fork. Base Branch: `gh-pages`, Compare Branch: `<ci>-tests`
1. Our current test is found here: `tests/test_verifyurl.rb`
1. If desired, you can check this test locally by running `ruby tests/test_verifyurl.rb` on this branch. Notice how different it will look on everyone's machines, and how having the tests run externally will smooth out the process.
1. Make changes to the `README.md` file based on test result on local machine / GitHub UI.
1. `git push` (if done locally)
    - Test now passes with changed link.
