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

alias la="ls -alrt"
export COLLATION=utf8_general_ci
export GOPATH=~/workspace/go
export EDITOR=/usr/bin/vim
export PATH=$PATH:/usr/local/go/bin
