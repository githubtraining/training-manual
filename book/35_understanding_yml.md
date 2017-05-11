## Understanding the `.yml` file

In the last section we had an opportunity to make a change to the `.yml` file, but what exactly is it and how does it help us?

In order to test your project, the CI service provider needs to know which tests to run on your code as well as the specifications for the build environment it should be tested within. Some service providers can automatically infer these settings based on your code, others require you to provide a detailed specification. These specifications are stored in the `<service-provider>.yml` file and are under version control just like the rest of your project.


The `.yml` is like a to-do list with three main parts:
  - setting up the environment
  - testing
  - deploying

There are many other steps that can go around and in between as a part of these main sections. If there is some scripts you want to happen before the build, as a part of the build, or based on the output or results of a build or of tests, that is all possible. The content of the `.yml` file will vary between service providers. For more detail on the `.yml` file for a specific CI/CD service, see their documentation. 
