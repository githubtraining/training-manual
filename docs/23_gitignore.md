## Configure Git to ignore files

You can add a text file in your repository titled `.gitignore` that instructs Git to stop tracking changes of certain files. This also means that these files will not be pushed to GitHub from your local machine.

**Files that you might want Git to ignore:**
1. Secrets, e.g. `*.pem`, `*.key`
1. Binary files, e.g. `*.pdf*`, `*.docx`
1. Log files, e.g. `*.log`
1. Build files, e.g. `Build/*`

### Here are some ways you can add a `.gitignore` file:

#### Ignore files  locally

In your Terminal or Git Bash, `cd` to the repository of interest and create a `.gitignore` file
```
touch .gitignore
```

#### Ignore files for all repositories on your local machine

You can also create a global `.gitignore` file to define a list of rules for ignoring files in every local Git repository

```
git config --global core.excludesfile ~/.gitignore_global
```

#### github/gitignore

The [github/gitignore repository](https://github.com/github/gitignore) is a collection of `.gitignore` templates based on popular programming languages.

For example, the following snippet shows some suggested files you should start ignoring in a Python project.

![python-gitignore](img/python-gitignore.png ':size=60%')

These templates are also available when you create a new repository:

![create-gitignore-repo](img/gitignore-create-repo.png ':size=60%')

#### gitignore.io

[This website](https://www.toptal.com/developers/gitignore) is another resource for you to find appropriate `.gitignore` templates when your project contains multiple programming languages.

![gitignore.io](img/gitignore.io.png)