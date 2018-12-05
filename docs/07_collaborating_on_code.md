## Collaborating on Your Code

Now that you have made some changes in the project locally, let's learn how to push your changes back to the shared class repository for collaboration.

### Pushing Your Changes to GitHub

![Pushing to GitHub](./img/push-pull.png)

In this case, our remote is GitHub.com, but this could also be your company's internal instance of GitHub Enterprise.

To push your changes to GitHub, you will use the command:

```sh
$ git push
```

> When you push, you will be asked to enter your GitHub username and password. If you would like Git to remember your credentials on this computer, you can cache your credentials using:
- Windows: `git config --global credential.helper wincred`
- Mac: `git config --global credential.helper osxkeychain`

[include](07a_activity_create_pull_request.md ':include')

### Exploring a Pull Request

Now that we have created a Pull Request, let's explore a few of the features that make Pull Requests the center of collaboration:

#### Conversation view
Similar to the discussion thread on an Issue, a Pull Request contains a discussion about the changes being made to the repository. This discussion is found in the Conversation tab and also includes a record of all of the commits made on the branch as well as assignments, labels and reviews that have been applied to the pull request.
#### Commits view
The commits view contains more detailed information about who has made changes to the files. Clicking each commit ID will allow you to see the changes applied in that specific commit.
#### Files changed view
The Files changed view allows you to see cumulative effect of all the changes made on the branch. We call this the `diff`. Our diff isn't very interesting yet, but as we make changes your diff will become very colorful.

### Code Review in Pull Requests

To provide feedback on proposed changes, GitHub offers three levels of commenting:

#### General Conversation
You can provide general comments on the Pull Request within the *Conversation* tab.
#### Line Comments
In the files changed view, you can hover over a line to see a blue `+` icon. Clicking this icon will allow you to enter a comment on a specific line. These line level comments are a great way to give additional context on recommended changes. They will also be displayed in the conversation view.
#### Review
When you are making line comments, you can also choose to *Start a Review*. When you create a review, you can group many line comments together with a general message: Comments, Approve, or Request Changes. Reviews have special power in GitHub when used in conjunction with protected branches.

### Activity: Code Review

One of the best ways to ensure code quality is to make peer reviews a part of every Pull Request. Let's review your partner's code now:

1. Click the *Pull Request* tab.
1. Use the *Author* drop down to locate your partner's pull request.
1. Click the *Files Changed* tab.
1. Hover over a single line in the file to see the blue +. Click the + to add a line comment.
1. Comment on the line and click *Start a review*.
1. Click *Review changes* in the top right corner.
1. Choose whether to *Approve* or *Request changes*
1. Enter a general comment for the review.
1. Click *Submit review*
1. Click the *Conversation* view to check out your completed review.
