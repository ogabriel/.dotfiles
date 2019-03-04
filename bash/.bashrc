# my configurations starts here

stty -ixon # disable ctrl+s and ctrl+q

shopt -s autocd # allow cd without cd

HISTSIZE= HISTFILESIZE= # infinite history

# some aliases
alias v="nvim ."
alias sv="sudo nim"
alias nv="nvim"
alias s="bundle exec rails server"
alias c="bundle exec rails console"

# adding color
alias ls="ls -hN --color=auto --group-directories-first"
alias grep="grep --color=auto"

# tips of linux  apps:
# - youtube-dll
# - youtube-viewer
# - speedometer

