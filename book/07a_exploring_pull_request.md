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
