export PATH="$PATH:/Users/hannes/.gem/ruby/2.3.0/bin"
export PATH="$PATH:/Users/hannes/.dotfiles/zettle"
export PATH="$PATH:/Users/hannes/.dotfiles/scripts"
export PATH="$PATH:/Users/hannes/bin"
export VISUAL=vim
export EDITOR=vim
export BASH_SILENCE_DEPRECATION_WARNING=1

export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8


unset __INTELLIJ_COMMAND_HISTFILE__
shopt -s histappend
shopt -s checkwinsize

HISTSIZE=100000
HISTFILESIZE=100000
HISTCONTROL=ignoredups:erasedups:ignorespace
HISTFILE=~/.bash_history
export PROMPT_COMMAND='history -a'


if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
    source /usr/local/etc/bash_completion.d/git-completion.bash;
fi

#sps() {
#   echo $(dirname $(pwd)) | gsed -r 's|/(.)[^/]*|/\1|g'
#
export PS1="\W\[\e[32m\]\\$\[\e[m\] "


[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias gs='git status -sb --show-stash'
alias gs='git -c color.status=always status -sb --show-stash | sed -e "s|feature/|f/|g"'
alias gd='git diff --color --word-diff=color -w --minimal --patience'
# alias gb='git branch --sort=-committerdate'
alias gb="git for-each-ref --sort=committerdate refs/heads/ --format='%(refname:short)          %(committerdate:relative)'"
alias gba='git branch --all'
alias gco='git checkout'
alias composer='php -d memory_limit=-1 /usr/local/bin/composer'
alias service='brew services'
alias ag='ag --path-to-ignore ~/.ignore'

bind '"\C-xp": "\C-a# \C-x\C-e\C-p\C-a\C-d\C-d\C-e"'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
