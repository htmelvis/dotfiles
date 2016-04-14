# Path to your oh-my-zsh installation.
# Start at the sites dir
#cd ~/Sites
# Nice little message to remind me to be thankful
echo ":::: Be Thankful, and Always Know What it is You Are Doing ::::"
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="honukai"
ZSH_THEME="fletcherm"
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

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
#HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-256color)

source $ZSH/oh-my-zsh.sh

# User configuration
#export JAVA_HOME=$(/usr/libexec/java_home)
#export M2_HOME=/usr/local/apache-maven
export PATH="/usr/local/heroku/bin:$PATH"
export PATH="$PATH:/usr/local/bin:/usr/bin:/bin:/bin:/usr/sbin:/usr/local/mysql/bin:/sbin"
#export MAVEN_OPTS="-Xmx1024m -XX:MaxPermSize=512m"

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
#if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='emacs'
# else
#   export EDITOR='vim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
alias zshconfig="emacs ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

#my personal aliases
alias start_pg="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias subl="/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl"
alias ngrok="~/Applications/ngrok" #ngrok

$NVM_SYMLINK_CURRENT=true

export NVM_DIR="/Users/edwardwieczorek/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

#Check whats running script
function _checkWhatsRunning(){
    echo "Checking port $1"
    lsof -wni tcp\:$1;
}

alias whatsup=_checkWhatsRunning
alias pyserver="python -m SimpleHTTPServer 8080"
alias nettingServer="ssh -i ~/.ssh/id_rsa_overstock root@104.236.44.175"
#link the re.common lib into the project

#sudo ln -s ~/Sites/re.common/lib/ ~/Sites/rendereffects.com/lib/common


export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
