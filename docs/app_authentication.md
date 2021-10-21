## Authentication troubleshooting guide

The following are reasons you may be having trouble performing network operations, these include: `clone`, `push`, `pull`, and `fetch`. Try diagnosing each problem and solution in the order we've presented them.

### 1. Have you told Git to remember your credentials in the past?

- **Yes** - You may have cached outdated credentials. Ask Git to forget them with `git config --global --unset credential.helper`. You may have to try `--system` instead of `--global`. Additionally, you may need to [clear the credentials from your credential manager](./App_clean_loaner_pc).
- **No / I don't know / I don't remember** - You should be seeing a prompt to enter your GitHub username and password each time you perform a network operation. If you don't, you've probably cached your credentials without realizing it.

### 2. Are you cloning with HTTPS?

- **Yes** - It's possible you've got [2FA](https://help.github.com/articles/about-two-factor-authentication/) set up. In order to be able to clone from the command line with HTTPS, you need to [use an access token](https://help.github.com/articles/creating-an-access-token-for-command-line-use/).

  If that still doesn't work, you can attempt to [clone with SSH](https://help.github.com/articles/which-remote-url-should-i-use/#cloning-with-ssh-urls).

- **No / I don't know** - Try [cloning with HTTPS](https://help.github.com/articles/which-remote-url-should-i-use/#cloning-with-https-urls-recommended), which is the recommended method for cloning.

### 3. Are you behind a firewall?

- **Yes** - The company firewall may be blocking access to GitHub, ask your employer or network administrator to [whitelist GitHub.com](https://help.github.com/articles/troubleshooting-connectivity-problems/). If a proxy is necessary, that can be configured [with Git](https://git-scm.com/docs/git-config#git-config-httpproxy).

  If the server you are cloning your repository from is anything other than GitHub.com, there might be something wrong with the SSL certificate. You could allow Git to accept a self-signed certificate with `git config --global http.verify false`

- **No** - It's possible that you've previously configured a proxy to bypass a firewall. You can unset such a proxy with the command `git config --global --unset http.proxy`. You may need to use `--system` instead of `--global`.

- **I don't know** - Ask your employer or network administrator if you're behind a firewall.
