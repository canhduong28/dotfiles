# load zgen
source "${HOME}/.zgen/zgen.zsh"

source ~/.aliases

# if the init scipt doesn't exist
if ! zgen saved; then
    echo "Creating a zgen save"

    zgen oh-my-zsh

    # plugins
    zgen oh-my-zsh plugins/osx
    zgen oh-my-zsh plugins/git
    zgen oh-my-zsh plugins/sudo
    zgen oh-my-zsh plugins/command-not-found
    zgen load zsh-users/zsh-syntax-highlighting
    zgen oh-my-zsh plugins/cp
    zgen oh-my-zsh plugins/extract
    zgen oh-my-zsh plugins/brew
    zgen oh-my-zsh plugins/web-search
    zgen oh-my-zsh plugins/z
    zgen oh-my-zsh plugins/common-aliases
    zgen oh-my-zsh plugins/vi-mode

    # completions
    zgen load zsh-users/zsh-completions src
    zgen load zsh-users/zsh-history-substring-search

    zgen load djui/alias-tips

    # theme
    zgen load mafredri/zsh-async
    zgen load sindresorhus/pure

    # save all to init script
    zgen save
fi

# bin dk and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

set -o vi


# java
export JAVA_HOME=$(/usr/libexec/java_home)

# python
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
export PYENV_VIRTUALENV_DISABLE_PROMPT=1

# ruby
eval "$(rbenv init -)"

# golang
# export GOPATH=$HOME/workspace/gocode
# export PATH=$GOPATH/bin:$PATH

# # projects
# export PYTHONPATH="/Users/canhduong/workspace/lion_collector/lion_collector/lion_article_builder"
# export PYTHONPATH="${PYTHONPATH}:/Users/canhduong/workspace/lion_collector/lion_collector/lion_article_builder/lab/lion_article_extractor"
# export PYTHONPATH="${PYTHONPATH}:/Users/canhduong/workspace/lae"

test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"
