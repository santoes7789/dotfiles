#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias zed=zeditor
alias vi=nvim

# PS1='\u@\h:\w $(parse_git_branch)\$ '
PS1='\w 〉'

export QT_QPA_PLATFORMTHEME=qt6ct  # For Qt5
export PATH="$HOME/.local/bin:$PATH"
export HISTSIZE=
eval "$(starship init bash)"
