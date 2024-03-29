# Autocompletion and prompt

if [[ "$SHELL" =~ "bash" ]]; then
  export GIT_PS1_SHOWDIRTYSTATE=true

  if [ "$USER" = "root" ]; then
    export PS1="\[\033[31m\]\w\$(__git_ps1 \" (\[\033[31m\]%s\[\033[31m\])\") #\[\033[0m\] "
  else
    export PS1="\[\033[33m\]\w\$(__git_ps1 \" (\[\033[36m\]%s\[\033[33m\])\") \$\[\033[0m\] "
  fi
fi

# Aliases

export COLLATION=utf8_general_ci
export EDITOR=/usr/bin/vim

alias teemux='ssh-add && tmux a || tmux'
