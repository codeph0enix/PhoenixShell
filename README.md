# PhoenixShell
This repo is just for my custom linux files and configurations.

# Bashrc
Includes my custom aliases for Debian Based systems.

To Replace (And Backup) your current bashrc file use the below commands

```
$ cd
$ mv .bashrc .bashrc.old
$ git clone --single-brach https://github.com/codeph0enix/PhoenixShell
$ cp PhoenixShell/bashrc .bashrc

```
`ls` = This runs `ls -lh --color=auto` (default ls alias has been commented out"

`update` = This auto runs `sudo apt update`

`upgrade` = This auto runs `sudo apt update && sudo apt upgrade`

`lscontainers` = This runs `docker ps`

`..` and `cd..` = These both alias to `cd ..`

# TMUX
Currently very little here - I am using @gpakosz TMUX configuration. I plan to make some custom modifications and for now recommend pulling from his repo.

If you do pull from here use the following commands

```
$ cd
$ git clone --single-branch https://github.com/codeph0enix/PhoenixShell
$ ln -s -f PhoenixShell/.tmux.conf
$ cp PhoenixShell/.tmux.conf.local .
```
