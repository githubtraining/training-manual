## Designing and Guiding Workflows

Developers should know how to use Git and GitHub on a day to day basis. However, before any team gets started, it's critical to have a defined workflow.

### Scenarios

Consider the following scenarios, and how you might create a workflow and choose tools to set the team up for success.

#### Project 1: Tests and Releases
We have our code set up and we want to have the tests automated. The tests are already existent in the file that is native, so a Circle file wouldn't be necessary. We want all tests to be passed before any branch is merged.  We don't have anything to deploy at this point in time, but we do want to have a recommended strategy for creating releases and how we will use release branches. We need to communicate these strategies to the team.

#### Project 2: Repository planning organization
The majority of our work happens in issues and markdown documents. We want to get more organized with our issues with labels, crosslinks, project boards... whatever it takes. Things get passed by the wayside now. It's unclear to others how to get things done, so we also need help organizing templates and the information on the README so other teams know what's going on. We should also have some kind of recommended review process to encourage newer or less technical members from committing directly on master.  

#### Project 3: Migrated from CVCS
We just came from Subversion, and we did a clean cutover. That's all well and good, but our branching techniques haven't really changed much. We need some guidance on general workflow best practices. We have Circle ready to be connected but we aren't using it properly on pull requests.

#### Project 4: Simple deployment pipeline
All of the code is there, but it's a pain to manually deploy. We want anything that goes to `master` to automatically be deployed to development.

#### Project 5: More complex deployment pipeline
We want automatic deploys to production from master, but more importantly, we want a deployment pipeline. We want review apps to be spun up automatically from each pull request, so we can immediately get review from everyone. Then, once it's merged into the `development` branch, we want it to automatically go to the development server, and when it's in `master`, to go to production.


### Tooling

What tooling would you use outside of GitHub? What GitHub features would you want to heavily utilize? What administrative settings could be arranged to be helpful?

- GitHub Pages
- Git Flow vs GitHub Flow
- Choosing tools in the development pipeline
- Project Boards &  Milestones
- Templates
- Avoiding context changing
- Using Pulse and Graphs
- Protected branches
- Avoiding duplicated code and work
