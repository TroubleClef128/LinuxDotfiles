
# The following lines were added by compinstall

zstyle ':completion:*' completer _complete _ignored _approximate
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]}' '' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' max-errors 2 numeric
zstyle ':completion:*' original true
zstyle :compinstall filename '/home/marina/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -v
bindkey  "^[[H"   beginning-of-line
bindkey  "^[[F"   end-of-line
bindkey  "^[[3~"  delete-char
# End of lines configured by zsh-newuser-install

autoload -Uz colors && colors


#######################################
# Plugins
#######################################

source ~/.zsh-plugins/git.zsh


#######################################
# Theme
#######################################

if [ "$(tty | cut -d / -f 3)" = "pts" ]; then
#	source ~/.zsh-plugins/themes/agnoster.zsh-theme
	source ~/.zsh-plugins/themes/my-agnoster.zsh-theme
else
	source ~/.zsh-plugins/themes/gentoo.theme
fi


#######################################
# Aliases
#######################################

alias la="exa -la --group-directories-first"
alias ls="exa -l --group-directories-first"
alias copy="xclip -selection c"
alias osync="onedrive --synchronize --single-directory 'Documents/Obsidian'"
alias gsync="onedrive --synchronize --single-directory 'Documents/Programming/PC_Game'"
alias ranger='ranger --choosedir=$HOME/.config/ranger/lastdir; cd $(cat $HOME/.config/ranger/lastdir)'
alias bose='bluetoothctl connect C8:7B:23:48:BC:05'
alias disbose='bluetoothctl disconnect C8:7B:23:48:BC:05'

export EDITOR=nvim


#######################################
# Autorun
#######################################

if [ $(tty) = "/dev/tty1" ]; then
	startx
elif [ $(tty) = "/dev/tty2" ]; then
	Hyprland
else
 pokemonshow $(/exec/Pokemon.sh)
fi
