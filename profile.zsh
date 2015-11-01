eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

alias vim='/usr/local/bin/mvim'
alias vi='/usr/local/bin/mvim'
alias v='/usr/local/bin/mvim'

# python
export PATH=/usr/local/bin:/usr/local/sbin:$PATH

export PYTHONPATH="${PYTHONPATH}:/Users/canhduong/workplace/lion_article_builder/lab/lion_article_extractor"

# golang
export GOPATH=/usr/local/opt/go/libexec
export PATH=$GOPATH/bin:$PATH
