#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '
PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '

alias vim="nvim"
alias ll="ls -las"
alias open="xdg-open"

PATH="~/.local/bin:$PATH"
PATH="~/.config/emacs/bin:$PATH"

bind '"\C-f":"tmux-sessionizer\n"'
bind '"\C-t":"tmux a\n"'

# bash vi mode
set -o vi

alias fastfetch="fastfetch -c neofetch"
alias neofetch="fastfetch"

alias ls="eza --icons"
alias ll="eza --icons -l"
