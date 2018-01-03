# End-to-End Test

Now we have CI/CD setup for our app. Let's try it out!

1. Navigate back to your GitHub repository **fork** and select the **Code** tab.
  ![image of selecting the code tab in a fork](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.044.jpeg)
1. Go to the file `app/models/book.rb` and click the :pencil2: pencil icon to edit it.
  ![image of the pencil icon to edit the app/models/book.rb file](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.044.jpeg)
  ![second image of the pencil icon to edit the app/models/book.rb file](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.045.jpeg)
1. On Line 3, uncomment the line by deleting the `#` character at the beginning.
  ![image of deleting the # character on line 3](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.046.jpeg)
  ![second image of deleting the # character on line 3](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.047.jpeg)
1. Scroll down to the **Commit changes** section. Add a commit message, using the following as an example:
                ```
                Adding new test for the app
                ```
  ![image of adding a commit message in the browser](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.048.jpeg)
1. In the **Create a new branch...** option, enter a new branch name, using the following as an example:
                ```
                add-test
                ```
  ![image of selecting create a new branch while committing](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.048.jpeg)
1. Click **Commit changes**. A [Pull Request](https://help.github.com/articles/about-pull-requests/) will automatically be opened for this proposed change.
  ![image highlighting the commit button](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.048.jpeg)
1. Add the `enhancement` label and click **Create pull request**.
  ![image of the enhancement label and highlighting the create pull request button](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.049.jpeg)
1. The Pull Request will now show the creation of a conversation about the change as well as the integrated dev tools you can follow throughout the requested change.
  - Code Owner enforcement with automatic Code Review
  - Conversation
  - Initial and subsequent commits to this branch
  - Automatic build/test with link
  - Automatic staging deployment with link
  ![image highlighting and defining all of the additional information in the pull request](https://raw.githubusercontent.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.050.jpeg)
