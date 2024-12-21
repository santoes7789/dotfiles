#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias vi=nvim

PS1='\w 〉'

export QT_QPA_PLATFORMTHEME=qt5ct  # For Qt5
export HISTSIZE=
