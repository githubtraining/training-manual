### Initializing a New Local Repository

Let's create a local repository that we can use to practice the next set of commands.

1. Navigate to the directory where you will place your practice repo (`cd ..` to get back to the parent folder).
1. Create a new directory and initialize it as a git repository: `git init practice-repo`
1. CD into your new repository: `cd practice-repo`
1. Create an empty new file named `README.md`:
   - Bash: `touch README.md`
   - PowerShell: `Out-File README.md`
1. Add and commit the README.md file.

Since we will be using this as our practice repository, we need to generate some files and commits. Here are some scripts to make this easier:

**Bash:**

```bash
for d in {1..6}; do touch "file${d}.md"; git add "file${d}.md"; git commit -m "adding file ${d}"; done
```

**PowerShell:**

```powershell
for ($d=1; $d -le 6; $d++) { Out-File file$d.md; git add file$d.md; git commit -m "adding file$d.md"; }
```

> You might see a command during this section, `tree .git`. If you're on a machine where `tree .git` doesn't work (probably a Windows machine), try `cmd //c tree` instead.
