# load zplug
source ~/.zplug/init.zsh

source ~/.aliases

zplug "plugins/git", from:oh-my-zsh
zplug "plugins/osx", from:oh-my-zsh
zplug "plugins/sudo", from:oh-my-zsh
zplug "plugins/vi-mode", from:oh-my-zsh
zplug "plugins/extract", from:oh-my-zsh
zplug "plugins/z", from:oh-my-zsh
zplug "zsh-users/zsh-completions"
zplug "zsh-users/zsh-syntax-highlighting", nice:10
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

# bin dk and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

set -o vi

# java
export JAVA_HOME=$(/usr/libexec/java_home)

# python
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PYENV_ROOT=/usr/local/var/pyenv
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# ruby
eval "$(rbenv init -)"

# golang
export GOPATH=$HOME/workspace/gocode
export PATH=$GOPATH/bin:$PATH

# # projects
export PYTHONPATH="/Users/canhduong/workspace/lion_collector/lion_collector/lion_article_builder"
export PYTHONPATH="${PYTHONPATH}:/Users/canhduong/workspace/lion_collector/lion_collector/lion_article_builder/lab/lion_article_extractor"
export PYTHONPATH="${PYTHONPATH}:/Users/canhduong/workspace/lae"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

export PATH=$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin
