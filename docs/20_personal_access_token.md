## Interacting with SSO-enabled organizations

If the repositories you interact with daily are contained in an organization that enforces SSO you might encounter difficulty working with those repositories when trying to perform Git operations like `clone`, `pull`, and `push`. This issue can be remedied by creating a personal access token (PAT) for use with your GitHub account.

> **Note:** While personal access tokens have multiple uses, this is the most common reason to create one.

### Creating a PAT on GitHub.com

1. Access your account [Settings](https://github.com/settings/profile) page.
1. On the Settings page, click **Developer settings**.
1. On the Developer settings page, click **Personal access tokens**.
1. On the Personal access tokens page, click **Generate new token** in the top right corner of the page.
1. Enter a descriptive name for the PAT in the **Note** field. For example "Work laptop", "Eclipse IDE", or something else that will make it easier for future you to remember what the PAT is used for.
1. Select the **repo** checkbox.
1. Click **Generate token**.
1. Copy your new PAT, you won't be able to see the token again.

> **Note:** Read this for more information about [OAuth scopes](https://docs.github.com/apps/building-oauth-apps/scopes-for-oauth-apps/).

### Using your new PAT

1. Interact with a repository that belongs to an organization with SSO enabled.
1. After performing a Git operation that prompts you to sign in, such as `git push`, sign in with your username and instead of entering your normal password, use the PAT value from the PAT you created above.
