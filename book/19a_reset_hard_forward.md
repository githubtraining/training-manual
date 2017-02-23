### Oops, I Didn't Mean to Reset

Sometimes, you `git reset --hard` a little further than intended and want to restore that work. The good news is, that `git reset --hard` doesn't just work by going back in time, it can also go forward:

.Activity Instructions
. View the history of everywhere HEAD has pointed: `git reflog`
. Reset to the point in time where the original `file6.md` was created: `git reset --hard <SHA>`
. See your restored history: `git log --oneline`

Take a look at the commit IDs in `git log --oneline` compared to `git reflog`. What do you notice?

[NOTE]
====
Why didn't this command cause a merge conflict since we had already cherry-picked file 4. The reason is that `git reset --hard` is not trying to merge the two histories together, it is simply moving the branch to point to a new commit. In this case, this was what we wanted. In other cases, this could cause us to loose any work we may have done after the original reset.
====
