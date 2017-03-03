### Safe Operations

Git's data structure gives it integrity but its distributed nature also requires us to be aware of how certain operations will impact the the commits that have already been shared.

If an operation will change a commit ID that has been pushed to the remote (also known as a public commit), we must be careful in choosing the operations to perform.

#### Guidelines for Common Commands
| Command | Cautions |
| ------- | -------- |
| `revert`  | Generally safe since it creates a new commit.|
| `commit --amend` | Only use on local commits.
| `reset` | Only use on local commits.
| `cherry-pick` | Only use on local commits.
| `rebase` | Only use on local commits.
