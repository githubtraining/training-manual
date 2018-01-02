First, let's connect [Heroku to GitHub](https://devcenter.heroku.com/articles/github-integration):

1. <a href="https://www.heroku.com" target="\_blank">Open a new tab</a>, go to the Heroku dashboard at https://dashboard.heroku.com and Log In. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.032.jpeg) [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.033.jpeg)
    - If you haven't yet, register for a new Heroku account. You will be sent a confirmation email. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.034.jpeg)
1. Click **New > Create new app**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.035.jpeg)
1. For the **App name**, enter `my-awesome-book-app-GITHUB_USERNAME`. Heroku app names must be unique so append `-GITHUB_USERNAME` to the name. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.036.jpeg)
1. Click **Add to pipeline**, then select **Create new pipeline**. Leave the defaults and click **Create app**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.036.jpeg)
1. In the Heroku **Deploy** tab, for the **Deployment method** select :octocat: **GitHub** and **Connect to GitHub**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.037.jpeg) Log in if prompted, but it should take your already logged-in session, where you can click **Authorize heroku**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.038.jpeg)
1. After authenticating Heroku to GitHub, type `github-for-managers` in the text box and click **Search**. Our repository should be displayed, then click **Connect**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.039.jpeg)

Now, let's enable [Heroku Review Apps](https://devcenter.heroku.com/articles/github-integration-review-apps). When a Pull Request is opened, each new commit can trigger automatic test deployments in an isolated environment, called Review Apps in Heroku:

1. Go to the Heroku dashboard at https://dashboard.heroku.com. Select **my-awesome-book-app-GITHUB_USERNAME**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.040.jpeg)
1. Click **Enable Review Apps** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.041.jpeg), then select both options:
    - :ballot_box_with_check: _Select Create new review apps for new pull requests automatically_ [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.042.jpeg)
    - :ballot_box_with_check: _Select Destroy stale review apps automatically_ [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.042.jpeg)
    - Click **Enable** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.042.jpeg)
