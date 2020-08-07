### Add an Action to your repository from the Marketplace

![actions-workflow-image](https://user-images.githubusercontent.com/6351798/82076100-8b096480-969a-11ea-95bc-ad25920867d9.png)

1. For this activity, we are going to use the [Release Drafter](https://github.com/marketplace/actions/release-drafter) action from the Marketplace. This Action helps you organize and draft your release notes. Here, you can read through the documentation and understand how you can customize it to your own liking.
1. Some Actions use a configuration file and `Release Drafter` is one of them. Go ahead and create a configuration file in your repository in the following directory: `.github/release-drafter.yml`
1. In this file, add the following:
```
name-template: 'v$RESOLVED_VERSION 🌈'
tag-template: 'v$RESOLVED_VERSION'
categories:
  - title: '🚀 Features'
    labels:
      - 'feature'
      - 'enhancement'
  - title: '🐛 Bug Fixes'
    labels:
      - 'fix'
      - 'bugfix'
      - 'bug'
  - title: '🧰 Maintenance'
    label: 'chore'
change-template: '- $TITLE @$AUTHOR (#$NUMBER)'
version-resolver:
  major:
    labels:
      - 'major'
  minor:
    labels:
      - 'minor'
  patch:
    labels:
      - 'patch'
  default: patch
template: |
  ## Changes

  $CHANGES
```
This configuration file styles and formats your release notes. 
1. Next, add your workflow file in this directory: `.github/workflows/release-drafter.yml`
1. In this file, paste the following:

```
name: Release Drafter

on:
  push:
    # branches to consider in the event; optional, defaults to all
    branches:
      - master

jobs:
  update_release_draft:
    runs-on: ubuntu-latest
    steps:
      # Drafts your next Release notes as Pull Requests are merged into "master"
      - uses: release-drafter/release-drafter@v5
        with:
        # Specify config name to use, relative to .github/.  
          config-name: release-drafter.yml
        env:
          GITHUB_TOKEN: ${{ secrets.GITHUB_TOKEN }}
```

- Let's break down what this workflow file means.

    - `on: push:` - This is the event trigger for this workflow. In this example, we are triggering this workflow whenever there is a push on `master` branch.
    - `jobs` - Jobs define the environment and the steps. 
    - `uses` - This is where you define the Action. In this example, we are specifying version 5 of the `release-drafter` repo.
    - `config-name` - Here, we call out the configuration file we added previously.
    - `GITHUB_TOKEN` - This action utilizes your Personal Access Token which is stored in the Actions Secret store.

### Trigger the Action
1. Edit a file, make a commit and open a Pull Request
1. In your Pull Request, add a label defined in the **Configuration file**.
    - `enhancement`
    - `bug`
    - `chore`
1. Merge your Pull Request. 
1. Check on your Actions by clicking the **Actions** tab.
![actions-run](img/actions-run.png)

### Congratulations! 
Head over to **Releases** and marvel at the outcome:

![release](img/release-actions.png ':size=60%')

### Keep on practicing
-  Edit the Configuration file to your liking and run your Action again 
- Try out other Actions in the [Marketplace](https://github.com/marketplace?type=actions)
- Learn more about Actions via the [GitHub Learning Lab](https://lab.github.com/search?q=actions)

