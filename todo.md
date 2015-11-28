- [x] update atlas.json with final GH for Devs manual contents
- [x] update gh-for-devs-manual.asc with final book contents
- [ ] finish introduction.asc once sections have been added
- [ ] add publishing themes
- [ ] check for consistency in formatting
- [ ] check for consistency in indexes
- [ ] add more summary/explore options
- [x] add license statement to doc

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
