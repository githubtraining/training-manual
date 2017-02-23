### The Essential Git Workflow

![Git Workflow](book/images/git-workflow.png)

The Git flow is a lightweight workflow that allows you to experiment with new ideas safely, without fear of compromising a project.

Branching is a key concept you will need to understand. Everything in Git lives on a branch. By convention, the "blessed" or "canonical" version of your project lives on a branch called `master`.

When you are ready to experiment with a new feature or fix a bug, you create a new branch of the project. The branch will look exactly like `master` at first, but any changes you make will only be reflected in your branch. Such a new branch is often called a "feature" branch.

As you make changes to the files within the project, you will commit your changes to the feature branch.

When the changes have been tested and approved, the feature branch is merged onto the master branch.

In the next section, you will learn how to put this workflow into practice.
