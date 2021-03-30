## Preparing repositories for Teachbacks

### Project 1: Caption This

To practice teaching the first activities, please use the same repository you used in class. You will not need to alter this repository in any way to go through the activities.

### Project 2: Merge conflicts

To prepare your local repository to be ready for teaching, use the following commands.

```sh
git switch main
git reset --hard 1095c8c
git push --force
git checkout cb8731a
git switch -c manual2
git push -u origin manual2
(open pull request)
git checkout 6b50ac7
git switch -c css-changes2
git push -u origin css-changes2
(open pull request)
git checkout 945ca60
git switch -c readme-update2
git push -u origin readme-update2
(open pull request)
```

### Project 3: GitHub Games

- Edit the repository description to `https://githubtraining.github.io/github-games/`
- In your own copy of GitHub Games:

```sh
git switch main
git reset --hard 73c762c
git push --force
```

### Project 4: Working locally

Create a new repository for these activities.
