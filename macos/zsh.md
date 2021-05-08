# Z shell

## Command-line completion
Place the `completion` script in your a completion file within the ZSH configuration directory, such as `~/.zsh/completion/.`

```shell
$ mkdir -p ~/.zsh/completion
$ curl -L https://raw.githubusercontent.com/docker/machine/v0.16.0/contrib/completion/zsh/_docker-machine > ~/.zsh/completion/_docker-machine
```
Include the directory in your `fpath`, by adding a like the following to the `~/.zshrc` configuration file.

```shell
$ fpath=(~/.zsh/completion $fpath)
```
Make sure compinit is loaded or do it by adding in `~/.zshrc`:

```shell
$ autoload -Uz compinit && compinit -i
```
Then reload your shell:

```shell
$ exec $SHELL -l
```

## Useful
Show zsh commands:
```shell
$ bindkey
```

## References
[Command-line completion](https://docs.docker.com/machine/completion/)
