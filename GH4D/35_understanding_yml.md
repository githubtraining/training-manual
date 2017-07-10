## Understanding the `.yml` file

In the last section we had an opportunity to make a change to the `.yml` file, but what exactly is it and how does it help us?

In order to test your project, the CI service provider needs to know which tests to run on your code as well as the specifications for the build environment it should be tested within. Some service providers can automatically infer these settings based on your code, others require you to provide a detailed specification. These specifications are stored in the `<service-provider>.yml` file and are under version control just like the rest of your project.


The `.yml` is like a to-do list with three main parts:
  - setting up the environment
  - testing
  - deploying

There are many other steps that can go around and in between as a part of these main sections. If there are some scripts you want to occur prior to the build, as part of the build, or based on the output or results of a build or test(s), that is all possible. The content of the `.yml` file will vary between service providers and you should consult their documentation when crafting your `.yml` file.

> Note: Our examples are relatively simple, but the capabilities of the testing environment go much deeper. The purpose of these testing environments is to test as closely to production as possible. The sky is the limit, if you want to test multiple versions, languages, environments, or machines, it is all possible! As we stated before, each CI vendor treats their .yml file differently, and you should consult their documentation when generating a `.yml` file that tests all the things. 
