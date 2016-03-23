source ~/.antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle osx
# antigen bundle git
# antigen bundle redis-cli
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting
antigen-bundle zsh-users/zsh-history-substring-search
antigen bundle zsh-users/zsh-completions src

# bin dk and j for VI mode
bindkey -M vicmd 'k' history-substring-search-up
bindkey -M vicmd 'j' history-substring-search-down

antigen bundle djui/alias-tips
antigen bundle rupa/z

# Load pure theme
antigen bundle mafredri/zsh-async
antigen bundle sindresorhus/pure

antigen apply

set -o vi
export EDITOR=vim
export VISUAL=vim

source ~/.aliases

export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"

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
export GOPATH=$HOME/workspace/gocode
export PATH=$GOPATH/bin:$PATH

# projects
export PYTHONPATH="/Users/canhduong/workspace/lion_collector/lion_collector/lion_article_builder"
export PYTHONPATH="${PYTHONPATH}:/Users/canhduong/workspace/lion_collector/lion_collector/lion_article_builder/lab/lion_article_extractor"
export PYTHONPATH="${PYTHONPATH}:/Users/canhduong/workspace/lae"

export SENTRY_DSN="http://381ed3dc5707472a80b4f4f54ab88554:fca2d36b7c8040b18cf99f11c21984fa@localhost:9000/2"
