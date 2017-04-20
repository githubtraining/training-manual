### What is a Fork?

Instead of giving individuals collaborator access to a repository, GitHub also offers a different workflow we like to call *Fork & Pull*.

A fork is a full copy of a repository that is owned by a different user or organization account. They are easiest to understand in the context of Open Source.

If you own an open source project, you may receive hundreds of Pull Requests from contributors you have never met. It would be impractical to give all of these contributors write access to your project, so GitHub allows for a Fork & Pull workflow.

Each contributor will Fork the repository, making a copy on their user account. Since they have full access to that copy, they can make changes, test, etc.

When they are done, they can submit a Pull Request to the original repository, but they cannot merge it. Only those with write access to your repository will be able to merge the Pull Request.

> **Warning:** A fork is a static copy of the parent repository. As such, here are some best practices for working with forks:
- Treat your fork like a branch, keep your work short lived and focused.
- Once your Pull Request has been merged to the parent repository, delete your fork of the repository. If you would like to make additional changes, create a new fork.
- If you want to keep your fork around for a long period of time, set a second, upstream remote to easily manage updates (we will cover this a little later.)
