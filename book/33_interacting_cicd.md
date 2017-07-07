### Workflow Review: Updating the README.md to Pass the Tests

Now you will practice the GitHub Flow from beginning to end by updating the link in the README to point to your fork of the repository.

> Remember, your copy of the website will be rendered at `https://githubschool.github.io/github-games-username`.
>
> This link also appears in the repository description. It is a good idea to edit the website URL in the description so you can easily access your game.

> If you click the link, you will see the text in the `README.md`. We have intentionally broken this repository so we can fix it together. The tests that we are merging in also check for this URL.

The current test is looking to see if the URL in the `README.md` is correct. Using the GitHub flow, create a pull request that will have a failing build and **doesn't** have the correct URL. Our current test is found here: `tests/test_verifyurl.rb`

Since this is a review, we have written these steps at a high level. As we complete the review, we will show you a few shortcuts for the commands you learned in the previous activity:

1. Clone your copy of the repository: `git clone https://github.com/githubschool/github-games-USERNAME.git`.
1. Checkout to the branch that is in the pull request, `CISERVICE-tests`.
1. Edit the URL in the `README.md` so the tests will pass.
1. Commit the changes to your branch.
1. If desired, you can check this test locally by running `ruby tests/test_verifyurl.rb` on this branch. Notice how different it will look on everyone's machines, and how having the tests run externally will smooth out the process. _(For this to work, you will need Ruby installed locally.)_
1. Push your branch to GitHub: `git push -u origin readme-update`
1. Create a Pull Request *in your repository* (base: `gh-pages`, compare: `readme-update`).
1. See that the tests are passing. If they aren't passing, look at the test to see what changes you still need to make.
1. Merge your Pull Request.
1. Delete the branch on GitHub.
1. Update your local copy of the repository: `git pull --prune`
