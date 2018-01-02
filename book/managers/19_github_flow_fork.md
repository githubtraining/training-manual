# End-to-End Test

Now we have CI/CD setup for our app. Let's try it out!

1. Navigate back to your GitHub repository **fork** and select the **Code** tab. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.044.jpeg)
1. Go to the file `app/models/book.rb` and click the :pencil2: pencil icon to edit it. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.044.jpeg) [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.045.jpeg)
1. On Line 3, uncomment the line by deleting the `#` character at the beginning. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.046.jpeg) [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.047.jpeg)
1. Scroll down to the **Commit changes** section. Add a commit message, using the following as an example: [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.048.jpeg)
    ```
    Adding new test for the app
    ```
1. In the **Create a new branch...** option, enter a new branch name, using the following as an example: [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.048.jpeg)
    ```
    add-test
    ```
1. Click **Commit changes** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.048.jpeg). A [Pull Request](https://help.github.com/articles/about-pull-requests/) will automatically be opened for this proposed change.
1. Add the `enhancement` label and click **Create pull request**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.049.jpeg)
1. The Pull Request will now show the creation of a conversation about the change as well as the integrated dev tools you can follow throughout the requested change. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.050.jpeg)
    - Code Owner enforcement with automatic Code Review
    - Conversation
    - Initial and subsequent commits to this branch
    - Automatic build/test with link
    - Automatic staging deployment with link
