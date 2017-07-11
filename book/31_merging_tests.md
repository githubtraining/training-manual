## Merging Tests and the `.yml` file

Before we can begin using our Continuous Integration solution, we need to add the `.yml` file and some tests that we already created for our project.

1. Look at the list of remote tracking branches: `git branch --all`.
1. Depending on which CI/CD service you are using, create a pull request into `base: gh-pages` from the appropriate branch, named `<service>-tests`.
1. **DO NOT** Merge the pull request.

> If you take a peek in the `.yml` file now, you'll see some important information. We'll go into this in more detail later. Just by looking at it, what do you think it all means? What questions do you have?
