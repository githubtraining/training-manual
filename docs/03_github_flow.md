## Understanding the GitHub flow

In this section, we discuss the collaborative workflow enabled by GitHub.

### The Essential GitHub Workflow

![GitHub Workflow](./img/github-workflow.png)

The GitHub flow is a lightweight workflow that allows you to experiment with new ideas safely, without fear of compromising a project.

Branching is a key concept you will need to understand. Everything in GitHub lives on a branch. By default, the "blessed" or "canonical" version of your project lives on a branch called `main`. This branch can actually be named anything, as we will see in a few minutes.

When you are ready to experiment with a new feature or fix an issue, you create a new branch of the project. The branch will look exactly like `main` at first, but any changes you make will only be reflected in your branch. Such a new branch is often called a "feature" branch.

As you make changes to the files within the project, you will commit your changes to the feature branch.

When you are ready to start a discussion about your changes, you will open a pull request. A pull request doesn't need to be a perfect work of art - it is meant to be a starting point that will be further refined and polished through the efforts of the project team.

When the changes contained in the pull request are approved, the feature branch is merged onto the main branch. In the next section, you will learn how to put this GitHub workflow into practice.

### Exploring

Here are some interesting things you can check out later:

- *[guides.github.com/introduction/flow/](https://guides.github.com/introduction/flow/)* An interactive review of the GitHub Workflow.
