# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git bundler rake rails)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# Tip: left-most folders take precedence
# -------------------------------------------------------------------------------------

export EDITOR="vim"

#
# Default Mac OS X binaries
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:$PATH #removed /usr/local/bin from here
# my local binaries
export PATH=~/bin:$PATH
# homebrew
export PATH=/usr/local/bin:/usr/local/sbin:$PATH
# ruby
export RBENV_ROOT=$rbenvdir
export PATH=${rbenvdir}/bin:$PATH
eval "$(rbenv init - zsh)"
# node
export PATH=/usr/local/share/npm/bin:$PATH
# Custom aliases
source $HOME/Dropbox/config/devkit/.aliases
source $HOME/Dropbox/config/devkit/mac/.aliases

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"
