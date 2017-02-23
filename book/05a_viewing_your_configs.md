### Viewing Your Configurations

If you would like to see which config settings have been added automatically, you can type `git config --list`. This will automatically read from each of the three config files and list the setting they contain.

```sh
$ git config --list
```

You can also narrow the list to a specific configuration level by including it before the list option.

```sh
$ git config --global --list
```
