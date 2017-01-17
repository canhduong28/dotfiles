# load zplug
source ~/.zplug/init.zsh

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting"
zplug "zsh-users/zsh-history-substring-search"
zplug "djui/alias-tips"
zplug "sindresorhus/pure"

if ! zplug check; then
    zplug install
fi

# source plugins and add commands to the PATH
zplug load

autoload -U promptinit; promptinit
prompt pure

source ~/.aliases

# bin dk and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

set -o vi
export EDITOR=vim

# java
export JAVA_HOME=$(/usr/libexec/java_home)

# python
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PYENV_ROOT=/usr/local/var/pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# ruby
eval "$(rbenv init -)"

eval "$(thefuck --alias)"

# golang
export GOPATH=$HOME/projects/gocode
export PATH=$GOPATH/bin:$PATH

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

alias vim='nvim'
