## Git LFS (Large File Storage)

While Git is a great version control system when used for non-binary files, it can sometimes struggle with binary files. One of the best ways to store binary files with the rest of your repository files is by using Git Large File Storage (LFS). Git LFS replaces large files such as audio samples, videos, datasets, and graphics with a SHA-256 hash pointer known as OID, short for Object ID inside Git, while storing the file contents on a remote server like GitHub.com or GitHub Enterprise.

> **Note:** The following activities utilize a the [githubschool/lfs-example](https://github.com/githubschool/lfs-example) repository, to follow along with the activities, you will need to Fork the repository to your account.

### Background story

ACME Incorporated is planning on using Toggl for time tracking and are using this repository to provide information on how to use Toggl and download the desktop application that has passed the IT Security team's audit.

Unfortunately, the `.dmg` file was added to the Git repository without using Git LFS and we need to fix that mistake. Perform the steps found in the upcoming sections to successfully retain the `.dmg` file in the project but utilizing Git LFS to maintain it in the project.

### Activity: Install Git LFS

Before we can begin using Git LFS, we need to install it on our local machine. Below are the steps for installing Git LFS on your machine based on your operating system.

#### MacOS

1. Navigate to [git-lfs.github.com](https://git-lfs.github.com/) and click **Download**. Alternatively, you can install Git LFS using a package manager:

    - [Homebrew](https://brew.sh/): `brew install git-lfs`

    - [MacPorts](https://www.macports.org/): `port install git-lfs`

    ?> If you install Git LFS with Homebrew or MacPorts, skip to step six.

1. On your computer, locate and unzip the downloaded file.
1. Open Terminal.
1. Change the current working directory into the folder you downloaded and unzipped.

    ```sh
    cd ~/Downloads/git-lfs-1.X.X
    ```

    > **Note:** The file path you use after `cd` depends on your operating system, Git LFS version you downloaded, and where you saved the Git LFS download.

1. To install the file, run this command:

    ```sh
    ./install.sh
    ```

    > **Note:** You may have to use `sudo ./install.sh` to install the file.

1. Verify that the installation was successful:

    ```sh
    git lfs install
    ```

#### Windows

1. Navigate to [git-lfs.github.com](https://git-lfs.github.com/) and click **Download**.

   ?> For more information about alternative ways to install Git LFS for Windows, see this [Getting started guide](https://github.com/github/git-lfs#getting-started).

1. On your computer, locate the downloaded file.
1. Double click on the file called _git-lfs-windows-1.X.X.exe_, where 1.X.X is replaced with the Git LFS version you downloaded. When you open this file Windows will run a setup wizard to install Git LFS.

    ?> When using Git LFS on Windows, ensure you have Git version `2.29.2.windows.2` or later.

1. Open Git Bash.
1. Verify that the installation was successful:

    ```sh
    git lfs install
    ```

## Tracking files with Git LFS

Before we tell Git LFS what files to track, we should identify what files are taking up the most space in our repository.

### Activity: Exploring the repository files

1. Open your command line application.
1. Change your current working directory to the `lfs-example` repository.

   ```sh
   cd lfs-example/
   ```

1. List the file types taking up the most space in your repository:

   ```sh
   git lfs migrate info
   ```

   Your output should look similar to:

    ```shell-session
    migrate: Fetching remote refs: ..., done.
    migrate: Sorting commits: ..., done.
    migrate: Examining commits: 100% (0/0), done.
    ```

    By default, `git lfs migrate info` only displays files that don't exist within commits on the remote repository.

1. Check for large files in every branch:

   ```sh
   git lfs migrate info --everything
   ```

   Your output should look similar to this:

    ```shell-session
    migrate: Sorting commits: ..., done.
    migrate: Examining commits: 100% (8/8), done.
    *.dmg 18 MB  1/1 files(s) 100%
    *.md  6.4 KB 10/10 files(s) 100%
    *.html 2.5 KB 4/4 files(s) 100%
    ```

   ?> If we only wanted to include files above a specific size, we could modify the previous command with `--above=1mb`

Now that we have identified the file that needs to be tracked with Git LFS it is time to import it into Git LFS and automatically fix the existing history of the project.

### Activity: Migrating the file to Git LFS

1. Convert all dmg files in every local branch:

   ```sh
   git lfs migrate import --everything --include="*.dmg"
   ```

    !> This is going to modify the history of the project to include the object that is now tracked in Git LFS.

    > **Note:** You can also migrate files without modifying the existing history of your repository by passing an additional attribute `--no-rewrite`. For example:
    >
    > ```sh
    > git lfs migrate import --no-rewrite test.zip *.mp3 *.psd
    > ```

1. Since we modified the local history of our project, we will need to force push our changes to the remote repository:

   !> This is going to rewrite the commit history of the project. Keep in mind all people working on the project should be made aware that this needs to occur.

   ```sh
   git push --force
   ```
