- [x] update atlas.json with final GH for Devs manual contents
- [x] update gh-for-devs-manual.asc with final book contents
- [ ] finish introduction.asc once sections have been added
- [ ] add publishing themes
- [ ] check for consistency in formatting
- [ ] check for consistency in indexes
- [ ] add more summary/explore options
- [x] add license statement to doc
- [x] Icons are enabled by setting the icons attribute on the document.
- [ ] add :imagesdir: book/images

### Formatting elements

#### Insert image

.Displayed image description.
image::book/images/areas.png["Alt text goes here."]

#### Insert command line text

[source,console]
----
$ git config --global user.name "John Doe"
$ git config --global user.email johndoe@example.com
----

#### Add a note

[NOTE]
====
This is the note text.
====

#### Add a warning

[WARNING]
====
This is the warning text.
====

#### Add an item to the index

(((git commands, config)))

## Homeless content

- Oops, I forgot to create a branch
  - **DEMO:** Modify file before creating branch
    - Create branch
    - Add file to staging area
- Same file in staging and working
  - Make more changes
  - `git status`
  - **LAB:** Learner completes same steps to prepare for diff

- Unstaging Files
  - **DEMO:** Create a file, stage it, then unstage it
  - **LAB:** Learner creates a file, stages it, then unstages it

- Discarding Changes in Modified Files
  - **DEMO:** Create a file, commit, make some changes, `git checkout --`
  - **LAB:** Learner makes changes to a file and then discards the changes.

- You can use the preview tab to see how your comment will look on GitHub.
- do: Include an issue attachment
  say: You can also add pictures by simply dragging and dropping them into the comment field, or clicking the file uploader link.
- do: Click `Comment`
  say: Click the green comment button to add your comments to the discussion.
- do: Return to the `Issues` view
  say: As you can imagine, a large project can have hundreds of issues. Let's look at a few ways your project team can organize issues.
- do: "`Assign` the issue to the co-teacher"
  say: First, you can assign issues to anyone with access to the repo. Typically, this will be the person who is currently responsible for the next step in the life of the issue. The issue assignee may change over time.
- do: Add a `label` to the issue
  say: You can also use labels to help you organize issues. GitHub comes with a number of built-in labels, but you can always delete those or add your own. As a project grows in size, using assignees and labels makes it much easier to find a specific issue.
- do: "Click `Issues > Filters`"
  say: Filters allow you to easily search for Issues by creator, labels, assignees and more. We will continue to explore these features throughout the course. For now, let's practice creating an issue!
