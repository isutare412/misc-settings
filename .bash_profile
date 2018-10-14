export TERM="xterm-256color"
export CLICOLOR=1   # Tell ls to be colorful
export LSCOLORS=ExFxCxDxBxegedabagacad  # Show directory color in blue
export GREP_OPTIONS='--color=auto'

# install commandline git prompt theme
# brew intall bash-git-prompt
if [ -f "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh" ]; then
  __GIT_PROMPT_DIR=$(brew --prefix)/opt/bash-git-prompt/share
  source "$(brew --prefix)/opt/bash-git-prompt/share/gitprompt.sh"
fi

alias vi="mvim -v"
alias vim="mvim -v"
alias clang++="clang++ -std=c++14 -Wall -Wextra"
alias javac="javac -encoding UTF-8"
alias java="java -Dfile.encoding=UTF-8"
alias git="LANG=en_US git"
