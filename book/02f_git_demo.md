[IMPORTANT]
====
*Facilitator Demo: Beginning with the End*

This meant to be a very quick demo of how easy it is to use Git. It is the beautiful soufflé we pull out of the oven to show the end result.

*You will need:*

- a gh-pages ready repository locally on your machine (remember to add a README.md so it will look pretty on GitHub).
- a matching repo on GitHub ready for the first push!

*Demo Script:*

This is a game I have been working on - I want to push it to a remote so a few of my friends can help me finish it:

- `git push -u origin gh-pages`

Show the game on GitHub pages.

Let's see how easy it is for our friends to make changes and send them back. First they will clone the repo to their local machine. Then they will:

- `git checkout -b new-feature`
- `atom index.html`
- `git add index.html`
- `git commit -m "adding new feature to index"`
- `git push -u origin new-feature`

Now I can pull down their changes and take a look:

- `git fetch`
- `git branch --all`
- `git diff gh-pages origin/new-feature`
- `git checkout gh-pages` - you only need this because you are playing both parts
- `git merge origin/new-feature`
- `git push`

Finally, show the change in the game on GitHub Pages!
====
