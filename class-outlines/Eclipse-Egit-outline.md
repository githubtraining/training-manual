## Using Eclipse with GitHub

### Preparation

- Ensure you have the latest version of Eclipse which comes with eGit pre-installed.
- For students with older versions of Eclipse, [this tutorial will help them get the plugin installed](http://eclipsesource.com/blogs/tutorials/egit-tutorial/)
- For a past recording of this class, see: https://www.youtube.com/watch?v=aZMA39BVd8c

### Introduction

- Assumptions we are making:
 - You know a little Git
 - You know a little more Eclipse
 - You want to use more Git inside of Eclipse
- The fundamental goal of the eGit plugin was to create a tool where you could interact with version control inside Eclipse in familiar ways.

### Activating Perspectives and Configuring Git

- Window > Perspective > Open Perspective > Java
- Window > Perspective > Open Perspective > Other > Git
- Eclipse > Preferences > Team > Git > configuration
- show _User Settings_, _System Settings_, _Repository Settings_
- Set config for `user.name`, `user.email`

#### Keeping it in one perspective

With Eclipse, you can customize each perspective to show the tabs and windows you want. Many users will customize their Java perspective to include the relevant Git views:

- Git
 - Repository
 - Staging
 - Reflog
- Team
 - History
 - Synchronize

### Creating an Eclipse project

Let's create a basic Hello World Project:

- Open `Java` perspective
- Window > Show View > `Project Explorer`
- `New Project` > Java Project > MyHelloWorld
- In `src` --> New > Package 'hello'
- In 'hello' --> New > Class "helloworld"
- Add code:

```Java
package hello;

public class helloworld {
  public static void main (String [ ] args){

    System.out.println("Hello World");
  }
}
```
- Click `Run`

At this point, we have a basic project, but no version control.

### Initializing Version control

- In `Java` perspective, right click `HelloWorld`
- Select `Team` > `Share project...`
- Click `Use or create repository in parent folder of project`
- Select project > Finish
- Show _HelloWorld NO-HEAD_
- Switch to `Git` perspective
- `Git Staging` tab
- Show `unstaged changes`
- Drag to `staged changes`
- Commit message
- `Commit` (not Commit and Push)
- Show _HelloWorld master_

### Getting Our Project on GitHub

- Create MyHelloWorld Repo on GitHub (no README, .gitignore, or LICENSE)
- Copy URL
- R-click project > `Push Branch master ...`
- Repo set up dialog
- Push branch master
- Check _Configure upstream for push and pull_
- What do these options mean?

### Adding a README

Let's follow the advice and add a README.md file to our project.

- Create a branch `add-readme`
- Switch to `Java` perspective _show that branch persists_
- New > File > README.md
- Add README text
- Show markdown preview
- Stage changes
- Clicking the file will bring up a diff view - this is a semantic diff
- Finish commit
- Push branch
- Go back over to GitHub - compare and pull request
- Make a change on GitHub
- Go back to Eclipse > pull
- Show changes added to file

### Viewing Project History
- Show `History` of project
- Show `History` of a specific file
- Searching History
- Reverting commits - literally one click

### Viewing Reflog

- Show `Reflog` - what is the difference between Reflog and History?
- Click a commit to see the diff

### Synchronize View

This view is the common denominator across all version control systems with Git. For some VCS, this is the only screen they use. With Git they have the added staging step.

- Clicking a file here will bring it up in the Eclipse Diff view.
- The remote file is actually the last commit.

### Things Eclipse Doesn't Do Well

- Staging Hunks
