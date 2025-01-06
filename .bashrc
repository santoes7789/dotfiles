#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias zed=zeditor
alias vi=nvim

function set_dynamic_prompt() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    echo "\[\033[36m\]\W"  # Green for project dirs
  else
    echo "\[\033[34m\]\w"  # Blue for non-project dirs
  fi
}

PROMPT_COMMAND='PS1="\n $(set_dynamic_prompt)$(__git_ps1 " \033[33m(%s)")\n  \033[37m "'
trap 'echo -n " "' DEBUG
source .git-prompt.sh
export QT_QPA_PLATFORMTHEME=qt6ct  # For Qt5
export PATH="$HOME/.local/bin:$PATH"
export HISTSIZE=
# ~/.bashrc


