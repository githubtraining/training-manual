## Cleaning out your loaner PC

If you borrowed a laptop or used a virtual machine for this class, you will want to clear out your configs and credentials before you give it back. Here's how:

### Step 1: Clear your configs

1. `git config --unset --global user.name`
1. `git config --unset --global user.email`

### Step 2: Clear your command line history

- **Bash:** `history -c && history -w && exit`
- **Windows command prompt:** Alt+F7

### Step 3: Clear the credential manager

**For Windows:**

1. From the **Start** menu, select **Control Panel**.
1. Click **User Accounts**.
1. Click **Manage my credentials**.
1. Click **Credential Manager**.
1. In the Windows Credentials and Generic Credentials section, remove any stored credentials referencing Git or GitHub.

**For Mac:**

1. Open the **Keychain Access** app.
1. Delete anything with GitHub.
