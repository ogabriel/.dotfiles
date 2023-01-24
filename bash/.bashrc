# my configurations starts here

stty -ixon # disable ctrl+s and ctrl+q

shopt -s autocd # allow cd without cd

HISTSIZE= HISTFILESIZE= # infinite history
HISTCONTROL=ignoreboth   # no duplicate entries

shopt -s histappend # append to history, don't overwrite it
shopt -s histreedit # reedit it, when failed
shopt -s histverify # verify it, when failed

# Save and reload the history after each command finishes
PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

# some aliases
alias v="vim ."
alias sv="sudo vim"
alias nv="nvim"
alias s="bundle exec rails server"
alias c="bundle exec rails console"
alias r="bundle exec rspec"
alias :q="exit"

export FZF_DEFAULT_COMMAND="find -L"

# adding color
alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"

export ERL_AFLAGS="-kernel shell_history enabled"
export PS1="💻\[\033[01;32m\]\w\[\033[01;34m\]\$(__git_ps1 '(%s)')\[\033[00m\] \$ "

export PATH=$PATH:${HOME}/.local/bin/:$HOME/bin:$HOME/.scripts:$HOME/.hidden_scripts

# tips of linux  apps:
# - youtube-dll
# - youtube-viewer
# - speedometer
