## Configure Git to ignore files

While working within your repository, you might notice files that your preferred editor or operating system have place in the repository. These files are typically things that you don't want git to track or include in the history of your project. Although you can manually ignore those files by never committing them to the history of the project, there is an easier way for you to ignore those files. Git enables you to ignore specific files, files types, and folders through the use of a text file you can add to your  repository titled `.gitignore`. This file instructs Git to stop tracking changes of certain files, which means that these files will not be pushed to GitHub from your local machine.

**Files that you might want Git to ignore:**

1. Secrets, e.g. `*.pem`, `*.key`
1. Binary files, e.g. `*.pdf*`, `*.docx`
1. Log files, e.g. `*.log`
1. Build files, e.g. `Build/*`

### Creating a `.gitignore` file

#### Ignore files  locally

In your Terminal or Git Bash, `cd` to the repository of interest and create a `.gitignore` file

```sh
touch .gitignore
```

#### Ignore files for all repositories on your local machine

You can also create a global `.gitignore` file to define a list of rules for ignoring files in every local Git repository

```sh
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
