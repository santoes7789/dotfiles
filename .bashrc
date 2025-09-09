#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias zed=zeditor
alias vi=nvim
alias ven='source venv/bin/activate'
alias curr='cd ~/projects/sekolah/cube-timer/'

function set_dynamic_prompt() {
  if git rev-parse --is-inside-work-tree >/dev/null 2>&1; then
    local git_root=$(git rev-parse --show-toplevel)
    local repo_name=$(basename "$git_root")
    local  git_relative_path=$(realpath --relative-to="$git_root" "$PWD")

    if [[ "$git_relative_path" == "." ]]; then
        echo "\[\e[36m\]$repo_name"  # Green for project dirs
    else
        echo "\[\e[36m\]$repo_name/$git_relative_path"  # Green for project dirs
    fi
  else
    echo "\[\e[34m\]\w"  # Blue for non-project dirs
  fi
}

# PROMPT_COMMAND='PS1="\n $(set_dynamic_prompt)$(__git_ps1 " \[\e[33m(%s)")\n  \[\e[0m\] "'
PROMPT_COMMAND='PS1="\n $(if [[ -n "$VIRTUAL_ENV" ]]; then echo "\[\e[32m($(basename "$VIRTUAL_ENV")) "; fi)$(set_dynamic_prompt)$(__git_ps1 " \[\e[33m(%s)")\n  \[\e[0m\] "'
# PS1="\n\e[0m\] "
# PROMPT_COMMAND='PS1="\n hello  "'
# PROMPT_COMMAND='\[\033[0;31m\]\u@\h:\w\$ \[\033[0m\]'
# PROMPT_COMMAND='PS1="\[\e[1;32m\]\u@\h:\w\$ \[\e[0m\]"'
# PROMPT_COMMAND='PS1="\n $(set_dynamic_prompt)$(__git_ps1 " \033[33m(%s)")\n   "'
source .git-prompt.sh
export PATH="$HOME/.local/bin:$PATH"
export HISTSIZE=
# ~/.bashrc


