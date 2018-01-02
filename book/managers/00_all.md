<p align="center">
  <img src="https://user-images.githubusercontent.com/3791941/31036931-072760fe-a534-11e7-8cd7-0565bdc2727c.png" width="100" height="60">

  <h3 align="center">GitHub for Managers - Workshop Instructions<br></h3>
</p>

The goal of this workshop is to demonstrate how to get started with some of the most important features in a GitHub repository, with a focus on the GitHub Flow. Links to descriptions of GitHub terminology are included in the steps below.

**Table of Contents:**

- [Concepts](#concepts)
- [Create an Issue](#create-an-issue)
- [Add your file and create Pull Request](#add-your-file-and-create-pull-request)
- [Now, a pipeline](#now-a-pipeline)
- [Setup CI](#setup-ci)
- [Setup CD](#setup-cd)
- [End-to-End Test](#end-to-end-test)

***

# Concepts

Let's spend a brief moment going over some terminology. Links are provided to learn more about the concept.

- [Developers](https://www.youtube.com/watch?v=KMU0tzLwhbE) are key to innovation and growth
- Why do we use [Source Code Management (SCM)](https://en.wikipedia.org/wiki/Version_control)?
- [Git](https://git-scm.com/) + [GitHub :octocat:](https://github.com)
    - [Lightweight Issue Tracking](https://guides.github.com/features/issues/)
    - [Social Coding](http://opentechschool.github.io/social-coding/)
    - [Webhooks](https://help.github.com/articles/about-webhooks/)
    - [Teams](https://help.github.com/articles/organizing-members-into-teams/) and ACLs
    - Web-based [file rendering](https://help.github.com/categories/working-with-non-code-files/)
    - [GitHub Pages](https://guides.github.com/features/pages/)
    - [Contributions](https://help.github.com/articles/viewing-contributions-on-your-profile/)
    - [Pull Requests](https://help.github.com/articles/about-pull-requests/)
        - [GitHub Flow](https://guides.github.com/introduction/flow/)
    - [Project Boards](https://help.github.com/articles/about-project-boards/)
    - [Templates](https://github.com/blog/2111-issue-and-pull-request-templates)
- [Integrations](https://github.com/features/integrations) and the [GitHub Marketplace](https://github.com/marketplace) :sparkles:

Every repository contains [administrative settings](https://help.github.com/categories/administering-a-repository/) for you to manage your project effectively, including (but not limited to) visibility, collaboration and quality checking. Check out each of the settings to learn how you can find tune your environment.

# Create an Issue

Let's create a tracking Issue to record our first item of work, which will be to create a file with your name.

1. In the repository's **Issues** tab, click **New issue**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.002.jpeg)
1. Enter a **Title** indicating you will create a file with your name on it [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.003.jpeg). Example:
    ```
    Create a new file - John
    ```
1. In the **Body** of the Issue, let's add a _Description_ similar to the following [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.003.jpeg):
    ```
    I need to create a new file with my name.
    ```
1. Click **Submit new issue**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.003.jpeg)

# Add your file and create Pull Request

Let's propose a file change to the repository to create a Pull Request:

1. In the repository's **Code** tab, navigate to the `workshop-attendees` folder. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.006.jpeg)
1. While in the `workshop-attendees` folder, click **Create new file**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.007.jpeg)
1. On the **Create new file** screen, be sure to provide a new filename. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.008.jpeg)
1. In the **Edit new file** box, type some info about yourself, for example [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.008.jpeg):
    ```
    Hello! My name is John.
    ```
1. Scroll down to the **Propose new file** section and provide a commit message. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.008.jpeg) Example:
    ```
    Adding my file
    ```
1. Click **Propose new file**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.008.jpeg)
1. The next screen will show the creation of the Pull Request, with some info about the specifics of your proposed change. Click **Create pull request**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.009.jpeg) A [Pull Request](https://help.github.com/articles/about-pull-requests/) will be opened for this proposed change.
1. You may be presented with a body of text where you can add and remove as you see necessary. This is where you tell the repository owner a bit more about your change. If asked, click **Create pull request**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.010.jpeg)
1. **Demo.** The instructor will demonstrate traceability and tracking aspects, including:
    - Linking to Issues
    - Code Review
    - Assignment
    - Label(s)
    - Milestone
    - Project Visualization [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.015.jpeg)

# Now, a pipeline

GitHub concepts are well documented features, but I believe it is important to understand how developers do their work. Even new users to GitHub can set up a CI/CD development pipeline with little effort, let's give it a try now.

To practice creating a pipeline, let's set up our own personal workspace. To create our workspace we will [fork](https://help.github.com/articles/fork-a-repo/) the [github-for-managers](https://github.com/universeworkshops/github-for-managers) repository. A **fork** is effectively a copy of a project you can use to freely experiment without affecting the original project.

1. Navigate to the workshop repository at https://github.com/universeworkshops/github-for-managers.
1. In the top-right-hand corner, click **Fork** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.017.jpeg). If asked, fork to your personal GitHub account.
1. You will then be taken to your forked repository where you can experiment. Notice the `forked from...` message in the top-left, and notice you can now see a **Settings** tab because you are the admin here. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.018.jpeg)
1. Let's protect the master branch. Click the repository's **Settings** tab, then **Branches**. Under **Protected branches** click the dropdown and select `master`. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.019.jpeg)
1. In the **Branch protection for `master`** page, check all available settings. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.020.jpeg)

# Setup CI

- **Definition:** [Continuous Integration](https://www.thoughtworks.com/continuous-integration)

Let's set up a CI job for your repository. This will give us an automated build and test step when we propose a change.

1. <a href="https://www.circleci.com" target="\_blank">Open a new tab</a>, go to https://circleci.com and click **Log In**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.022.jpeg)
1. Click **Sign in with GitHub** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.023.jpeg), and then click **Authorize circleci** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.024.jpeg).
1. After authorization, you can access the CircleCI app at https://circleci.com/dashboard.
    - **Note:** If you are already a member of multiple GitHub orgs, you need to select your username in the dropdown at the top of the page. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.025.jpeg)
1. On the left side, click **Projects** and then click **Add Project**. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.026.jpeg)
1. Next to **github-for-managers**, click **Setup project** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.027.jpeg), then:
    - For **Operating System**, select **Linux** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.028.jpeg)
    - For **Platform**, select **1.0** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.028.jpeg)
    - Click **Start building** [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.028.jpeg)
1. After up to four minutes, your CircleCI tests should pass :tada: :tada:. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.029.jpeg)
1. Check out the new Webhook created in your GitHub repository. Go to the repository's **Settings** tab, then select **Webhooks** to see that it was automatically created when you authorized it. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.030.jpeg)

**Post-workshop exercise:** Try setting up a Travis CI status check on your forked repository at https://travis-ci.org.

# Setup CD

- **Definition:** [Continuous Delivery](https://www.thoughtworks.com/continuous-delivery)

So our tests are wired in with CircleCI, now how do you deploy before merge? This helps us perform a better code review, we can see our actual application deployment before merging to `master`. Let's try it out!

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
1. Browse the links in the Pull Request to see additional detail about your change and the checks it triggers.
    - One of the deployment links in the thread will link to an actual deployment of the `MyAwesomeBookApp` application. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.050.jpeg) [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.051.jpeg)
    - Another link to show you the status of the CircleCI build/testing. [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.050.jpeg) [:camera:](https://github.com/universeworkshops/github-for-managers/master/workshop-images/github-for-managers.052.jpeg)
