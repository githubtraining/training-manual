## Interacting with CI/CD

#### Interacting with tests

The current test is looking to see if the URL in the `README.md` is correct. Using the GitHub flow, create a pull request that will have a failing build and **doesn't** have the correct URL. Our current test is found here: `tests/test_verifyurl.rb`


1. Working locally, check out to the `gh-pages` branch: `git checkout gh-pages`.
1. Make sure you have the most recent code: `git pull`.
1. Create a new branch and check out to it: `git checkout -b break-readme`.
1. Open the `README.md` file in your favorite text editor.
1. In the `README.md`, make sure the URL on line 5 _doesn't_ match the URL for your game. (Isn't it fun to break things?)
1. Save your changes, and exit out of your text editor.
1. Move your changes from the working directory to the staging area: `git add README.md`.
1. Commit the work in the staging area: `git commit -m "commit-message-goes-here"`.
1. If desired, you can check this test locally by running `ruby tests/test_verifyurl.rb` on this branch. Notice how different it will look on everyone's machines, and how having the tests run externally will smooth out the process. _(For this to work, you will need Ruby installed locally.)_
1. Push your branch to the remote: `git push -u origin break-readme`.
1. Open a pull request in your repository with `base: gh-pages` and `compare: break-readme`.
1. Wait for tests to run, and when they fail, click to find more information and look at the build output.
1. Fix broken PR by looking at error messages and making commits to fix the errors.
1. See status set to green, then merge.
