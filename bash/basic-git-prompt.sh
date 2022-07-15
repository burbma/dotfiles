# Requires ~/dotfiles/bash/bash_colors to be sourced already.
COLOR_GIT_MODIFIED=$txtylw
COLOR_GIT_STAGED=$txtcyn
COLOR_RESET=$txtrst

function git_prompt() {
  if git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    branch_name=$(git symbolic-ref -q HEAD)
    branch_name=${branch_name##refs/heads/}
    branch_name=${branch_name:-HEAD}

    echo -n " (${txtcyn}${branch_name}"

    if git status 2> /dev/null | grep -q 'nothing to commit, working tree clean'; then
      : # Colon is a no-op.
    fi

    if git status 2> /dev/null | grep -q 'Changes not staged for commit'; then
      echo -n "${txtred}*"
    fi

    if git status 2> /dev/null | grep -q 'Changes to be committed'; then
      echo -n "${txtylw}+"
    fi

    if git status 2> /dev/null | grep -q 'Your branch is ahead of'; then
      echo -n "${txtgrn}>"
    fi

    if git status 2> /dev/null | grep -q 'Your branch is behind'; then
      echo -n "${txtred}<"
    fi

    if git status 2> /dev/null | grep -q 'Untracked files'; then
      echo -n "${txtcyn}%"
    fi

    if git stash list 2> /dev/null | grep -q 'stash'; then
      echo -n "$txtrst$"
    fi

  echo -n "${txtrst})"

  fi
}

function basic-git-prompt() {
  PS1="\u@\h:\w$(git_prompt)\$ "
}
