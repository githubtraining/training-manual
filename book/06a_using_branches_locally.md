### Using Branches locally

```sh
$ git branch
```

If you type `git branch` you will see a list of local branches.

{% if context.facilitator %}
> **Facilitator Note:** Show that any branches created before the repo has been cloned do not appear with `git branch`.
{% endif %}

```sh
$ git branch --all
$ git branch -a
```

If you want to see all of the branches, including the read-only copies of your remote branches, you can add the `--all` option or just `-a`.

> **Note:** The `--all` and `-a` are actually synonyms for the branch command. Git often provides a verbose and a short option.
