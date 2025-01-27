# PhoenixShell
This repo is just for my custom linux files and configurations.

# Bashrc
Includes my custom aliases for Debian Based systems.

`update` = This auto runs sudo apt update && sudo apt upgrade
`lscontainers` = This runs docker ps

# TMUX
Currently very little here - I am using @gpakosz TMUX configuration. I plan to make some custom modifications and for now recommend pulling from his repo.

If you do pull from here use the following commands

```
$ cd
$ git clone --single-branch https://github.com/codeph0enix/PhoenixShell
$ ln -s -f PhoenixShell/.tmux.conf
$ cp PhoenixShell/.tmux.conf.local .
```
