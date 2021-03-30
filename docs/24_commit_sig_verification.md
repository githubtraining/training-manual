## Commit Signature Verification

Verifying the authenticity of the source of commits submitted to your repository might be important to you and your team. GitHub supports methods of ensuring that the author of the commit in a pull request was actually created from a trusted source. Commit signature verification is a cryptographically verifiable method of ensuring that commits coming from Mona Lisa are in fact coming from Mona Lisa.

Signed commits can be created by implementing a GPG or S/MIME signature that is attached to every commit that you make on your local machine (downstream repository). Once you have integrated GPG or S/MIME on your machine and account, commits you create locally and push to the upstream will appear like this in the GitHub UI:

![Signed commit example](https://docs.github.com/assets/images/help/commits/verified-commit.png)

An unsigned commit on the local downstream repo will not display the "Verified" tag in the GitHub interface. Any commits made directly on the GitHub interface will automatically include the "Verified" tag.

### Activity: Generate a new GPG key

> **Note:** Before generating a new GPG key, make sure you have verified your email address. If you haven't verified your email address, you won't be able to sign commits and tags with GPG.

1. Download and install the [GPG command line tools](https://www.gnupg.org/download/).
1. Open your preferred command line application.
1. Generate a GPG key pair by running the following command:

   ```bash
   gpg --full-generate-key
   ```

1. When prompted, select the type of key you want, press <kbd>Enter</kbd> to accept the default "RSA and DSA".
1. Enter the desired key size, your key must be at least `4096` bits.
1. Enter the length of time the key should be valid, press <kbd>Enter</kbd> to select the default of "No expiration".
1. Verify your selections are correct.
1. Enter your user ID information.

> **Note:** When entering your email address, ensure that you enter the verified email address for your GitHub account. To keep your email private, use your GitHub-provided private email address.

1. Type a secure passphrase.
1. Enter the following command to list the GPG key you just created.

    ```bash
    gpg --list-secret-keys --keyid-format LONG
    ```

1. From the list of GPG keys, copy the GPG key ID you would like to use. Copy the GPG key ID from the list.
1. Enter the following command pasting the GPG key ID you copied in the last step.

    ```bash
    gpg --armor --export GPG_key_ID
    ```

1. Copy your GPG key, beginning with `----BEGIN PGP PUBLIC KEY BLOCK----` and ending with `----END PGP PUBLIC KEY BLOCK----`. You will use this value to add the GPG key to your GitHub account.

### Activity: Add a GPG key to your GitHub account

1. On the GitHub site, click your profile photo in the top right corner and select **Settings**.
1. In the user setting sidebar, click **SSH and GPG keys**.
1. Click **New GPG key**.
1. In the "Key" field, paste the GPG key you copied when you generated your GPG key.

   ![GPG key entry field](https://docs.github.com/assets/images/help/settings/gpg-key-paste.png)

1. Click **Add GPG key**.
1. To confirm the action, enter your GitHub password.

### Activity: Tell Git about your signing key

1. Open your preferred command line application.
1. Enter the following command to list the GPG keys that have both a public and private key:

    ```bash
    gpg --list-secret-keys --keyid-format LONG
    ```

1. From the list of GPG keys, copy the GPG key ID you would like to use.
1. Enter the following command to set the GPG signing key you want to use in Git, replace `GPG_key_ID` with the value of the GPG key you just copied:

    ```bash
    git config --global user.signingkey GPG_key_ID
    ```

### Activity: Signing commits with your signing key

1. On your computer, navigate to the `github-games` repository you cloned before.
1. Create a new branch named `add-author` by entering:

    ```bash
    git switch -b add-author
    ```

1. Open the `README.md` file in your favorite text editor.
1. On the last line of the `README.md` file, potentially line 10, add the following, replacing `@username` with your GitHub username:

    ```bash
    Modified during a training by @username
    ```

1. Create a commit and push your changes by entering the following:

    ```bash
    git add README.md
    git commit -S -m  "Add author to README"
    git push -u origin add-author
    ```

1. Create a pull request and in the **Commits** tab you will see the **Verified** tag next to your commit.

> **Note:** If you've enforced branch protections in your repository, you can set up required commit signing. When you enable required commit signing on a branch, contributors can only push local commits to the branch if they are signed and verified. Contributors can merge signed and verified commits using the GitHub Enterprise web interface. For more information, see [Configuring protected branches.](https://docs.github.com/enterprise/user/articles/configuring-protected-branches)
