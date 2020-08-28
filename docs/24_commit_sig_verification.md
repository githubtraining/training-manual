## Commit Signature Verification

Verifying the authenticity of the source of commits submitted to your repository might be important to you and your team. GitHub supports methods of ensuring that the author of the commit in a pull request was actually created from a trusted source. Commit signature verification is a cryptographically verifiable method of ensuring that commits coming from Mona Lisa are in fact coming from Mona Lisa.

Signed commits can be created by implementing GPG or S/MIME signature that is attached to every commit that you make. Once you have integrated GPG or S/MIME on your machine and account, commits you create will appear like this in the GitHub UI:

![Signed commit example](https://docs.github.com/assets/images/help/commits/verified-commit.png)

An unverified commit will not display the "Verified" tag in the GitHub interface.

### Activity: Generate a new GPG key

> NOTE: Before generating a new GPG key, make sure you have verified your email address. If you haven't verified your email address, you won't be able to sign commits and tags with GPG. 

1. Download and install the [GPG command line tools](https://www.gnupg.org/download/).
1. Open your preferred command line application.
1. Generate a GPG key pair by running the following command:

   ```sh
   gpg --full-generate-key
   ```
1. When prompted, select the type of key you want, press `Enter` to accept the default "RSA and DSA".
1. Enter the desired key size, your key must be at least `4096` bits.
1. Enter the length of time the key should be valid, press `Enter` to select the default of "No expiration".
1. Verify your selections are correct.
1. Enter your user ID information.

> NOTE: When entering your email address, ensure that you enter the verified email address for your GitHub account. To keep your email private, use your GitHub provided `no-reply` email address.

1. Type a secure passphrase.
1. Enter the following command to list the GPG key you just created. 

    ```sh
    gpg --list-secret-keys --keyid-format LONG
    ```
1. From the list of GPG keys, copy the GPG key ID you would like to use. Copy the GPG key ID from the list.
1. Enter the following command pasting the GPG key ID you copied in the last step.

    ```sh
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

    ```sh
    gpg --list-secret-keys --keyid-format LONG
    ```
1. From the list of GPG keys, copy the GPG key ID you would like to use.
1. Enter the following command to set the GPG signing key you want to use in Git, replace `GPG_key_ID` with the value of the GPG key you just copied:

    ```sh
    git config --global user.signingkey GPG_key_ID
    ```

### Activity: Signing commits with your signing key

1. On your computer, access the `github-games` repository you cloned before.
1. Create a new branch named `add-author` by entering:

    ```sh
    git checkout master 
    git checkout -b add-author
    ```
1. Open the `README.md` file in your favorite text editor.
1. On the last line of the `README.md` file, potentially line 10, add the following, replacing `@username` with your GitHub username:

    ```
    Modified during a training by @username
    ```
1. Create a commit and push your changes by entering the following:

    ```sh
    git add README.md
    git commit -S -m  "Add author to README"
    git push -u origin add-author
    ```
1. Create a pull request and in the **Commits** tab you will see the **Verified** tag next to your commit.
