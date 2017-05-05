## What is CI?
#### Definition, context
- compare and contrast old Software Development Life Cycle (SDLC) with new, convince class of need to modernize their workflow ([related presentation](https://github.box.com/s/2vycilxamykdcswmed5mp6bvua1ejaz0))
- need an (analog?) activity to illustrate this, perhaps give people index cards with an assigned role and a shared goal of moving an object along past a finish line, but then give each role something they're looking for that holds the process back (waterfall, traditional SDLC, manual processes).
- Do the activity again, but give every role/team the ability to green-light moving the object along, also add some automated gates that automatically green-light moving object along if certain criteria are met, design so the process moves quickly (fast shipping)

#### Why run tests? Why use CI?
- Test code automatically
- Add structure to development process
- Test driven development (TDD) isn't just the addition of random tests - it's about building tests almost as software requirements
- Builds are done on separate servers by the CI services
  - describe the benefits of this: consistent configurations, battery of tests, reduces "works on my machine"
  - possible activity where participants come up with some of the pros on their own

#### What is the difference between CI and CD?
- **CI**: Continuous integration
  - Continuous Integration is the practice of automatically kicking off tests with each push, rather than ad-hoc testing.
- **CD**: Continuous deployment
  - Code pushed to deployment automatically based on custom circumstances
  - Continuous Deployment is the practice of continuously deploying to production servers. In conjunction with CI, companies can move to a CD model by giving developers the freedom to deploy several times a day upon successful builds. Merging in and of itself isn't considered CD, unless it's tied to some deployment strategy (ex: Heroku automatically deploy anything that gets merged into master).
- We will cover CI in this course, but _not_ CD.
  - Frequently these are implemented together and discussed together, but the concepts are different.
  - **note: add info about why they are typically implemented together**

#### Repercussions
- Protected branches
- Automatic deploys
