# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="frisk"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-flow python django pip nvm postgres rvm pyenv lein mix npm ansible apm cargo rust eslint mvn gradle rustup)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# pyenv 
export PATH="$HOME/.pyenv/bin:$PATH" 
eval "$(pyenv init -)" 
eval "$(pyenv virtualenv-init -)"

# nvm
export NVM_DIR=$HOME/.nvm
source $NVM_DIR/nvm.sh
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion

# mongodb
export PATH=$HOME/usr/local/mongodb/bin:$PATH

# nginx
export PATH=$HOME/usr/local/nginx/sbin:$PATH

# postgresql
#export PATH=/usr/local/pgsql/bin:$PATH
#export LD_LIBRARY_PATH=/usr/local/pgsql/lib

# rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

alias fuck='eval $(/home/x/.pyenv/versions/2.7.9/bin/thefuck $(fc -ln -1 | tail -n 1)); fc -R'

export PATH=$HOME/.local/bin:$PATH

# leiningen
export PATH=$HOME/usr/local:$PATH

# rust
export PATH=$HOME/.cargo/bin:$PATH

# java
export JAVA_HOME=/usr/lib/jvm/java-1.8.0-openjdk-amd64
#export PATH=$JAVA_HOME/bin:$PATH 
#export CLASSPATH=.:$JAVA_HOME/lib/dt.jar:$JAVA_HOME/lib/tools.jar
export PATH=$HOME/.apache-maven/bin:$PATH
export PATH=$HOME/.gradle-2.13/bin:$PATH

# elk
export PATH=$HOME/.local/filebeat-5.6.2-linux-x86_64:$PATH
export PATH=$HOME/.local/logstash-5.6.2/bin:$PATH
export PATH=$HOME/.local/metricbeat-5.6.2-linux-x86_64:$PATH

# linuxbrew
PATH="$HOME/.linuxbrew/bin:$PATH"
export MANPATH="$(brew --prefix)/share/man:$MANPATH"
export INFOPATH="$(brew --prefix)/share/info:$INFOPATH"

# pipenv
eval "$(pipenv --completion)"
