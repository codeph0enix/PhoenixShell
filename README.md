# PhoenixShell
This is a project created for automating my default shell for use on any system. Currently includes my default .bashrc, tmux profile, and starship configuration.

Eventually this will include custom scripts for sysadmin tasks and installing the standard packages I load on all machines.

To use my custom bashrc and tmux config follow these commands:

```
cd
mv .bashrc .bashrc.old
git clone --single-branch https://github.com/codeph0enix/PhoenixShell
cp PhoenixShell/bashrc .bashrc
ln -s -f PhoenixShell/tmux.conf .tmux.conf
cp PhoenixShell/tmux.conf.local .tmux.conf.local
cp PhoenixShell/tmuxlayout.sh .tmuxlayout.sh
source .bashrc
```

# Bashrc
Includes my custom aliases for Debian Based systems and does a check for if TMUX is running - if not running launches TMUX.


`ls` = This runs `ls -lh --color=auto` (default ls alias has been commented out"

`update` = This auto runs `sudo apt update`

`upgrade` = This auto runs `sudo apt update && sudo apt upgrade`

`lscontainers` = This runs `docker ps`

`..` and `cd..` = These both alias to `cd ..`

`...` and `....` = cd up 2 or 3 levels
# TMUX
Currently I am using @gpakosz TMUX configuration. I plan to make some custom modifications and for now recommend pulling from his repo.

The included bashrc file does auto launch tmux using my preferred layout, including a small htop pane.

# Starship
I use Starship for my Windows Terminal profile for Powershell and all my WSL profiles. By default, the BASHRC file is configured for Starship.

Credit to Christian Lempa for the template I originally modified.

Any NerdFont should work fine, I personally use JetBrainsMono Nerd Font

You can comment the `eval "$(starship init bash)" ` line if you do not want to use it.

## Steps for installing Starship

1.  Run `curl -sS https://starship.rs/install.sh | sh`
2.  Should prompt to confirm install
3.  Starship should now run on startup
4.  Run `cp PhoenixShell/starship.toml ~/.config/starship.toml`
