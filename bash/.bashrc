#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

#eval "$(oh-my-posh init bash --config ~/.config/ohmyposh/zen.toml)"
#eval "$(oh-my-posh init bash --config $HOME/.config/ohmyposh/EDM115-newline.omp.json)"

alias ls="eza --icons"
alias ll="eza -lh --icons"
alias vim="nvim"

PATH="~/.local/bin:$PATH"
PATH="~/.config/emacs/bin:$PATH"
alias ta="tmux a"
alias ts="tmux kill-server"

bind '"\C-f":"tmux-sessionizer\n"'
bind '"\C-t":"tmux a\n"'

# for steam UI scaling
export STEAM_FORCE_DESKTOPUI_SCALING=1.25

set -o vi
