# Requires ~/dotfiles/bash/bash_colors to be sourced already.
COLOR_GIT_MODIFIED=$txtylw
COLOR_GIT_STAGED=$txtcyn
COLOR_RESET=$txtrst

function git_prompt() {
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    branch_name=$(git symbolic-ref -q HEAD)
    branch_name=${branch_name##refs/heads/}
    branch_name=${branch_name:-HEAD}

    echo -n ":"

    if [[ $(git status 2> /dev/null | tail -n1) = *"nothing to commit"* ]]; then
      echo -n "$branch_name$COLOR_RESET"
    elif [[ $(git status 2> /dev/null | head -n5) = *"Changes to be committed"* ]]; then
      echo -n "$COLOR_GIT_STAGED$branch_name$COLOR_RESET"
    else
      echo -n "$COLOR_GIT_MODIFIED$branch_name*$COLOR_RESET"
    fi
  fi
}

function basic-git-prompt() {
  PS1="\u@\h:[\w$(git_prompt)] \$ "
}
