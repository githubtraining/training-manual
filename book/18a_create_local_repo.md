### Initializing a New Local Repository

Let's create a local repository that we can use to practice the next set of commands.

.Activity Instructions
. Navigate to the directory where you will place your practice repo (`cd ..` to get back to the parent folder).
. Create a new directory and initialize it as a git repository: `git init practice-repo`
. CD into your new repository: `cd practice-repo`
. Create an empty new file named `README.md`: `touch README.md`
. Add and commit the README.md file.

Since we will be using this as our practice repository, we need to generate some files and commits. Here are some scripts to make this easier:

- *Bash:* `for d in {1..6}; do touch "file${d}.md"; git add "file${d}.md"; git commit -m "adding file ${d}"; done`
- *PowerShell:* `for ($d=1; $d -le 6; $d++) { touch file$d.md; git add file$d.md; git commit -m "adding file$d.md"; }`
