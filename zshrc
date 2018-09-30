# Path to your oh-my-zsh installation.
export ZSH=/Users/stevenbax/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git zsh-autosuggestions)

# User configuration

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/opt/X11/bin:/usr/local/git/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias mamp="cd /Applications/MAMP/htdocs"
alias proj="cd ~/Projects"
alias runhttp="python -m SimpleHTTPServer"
alias runphp="php -S localhost:8888"
alias chrome="open -a 'Google Chrome'"
alias md="open -a 'Markoff'"
alias mount="mount |column -t"
alias h="history"
alias c="clear"
alias lip="ipconfig getifaddr en0"
alias ip="curl canhazip.com"
alias listsize="du -sh */"
alias kan="killall node"
alias kat="killall tmux"
alias kgs="killall node; gulp serve"
# https://gist.github.com/artero/1236170
# ln -s /Applications/Sublime\ Text\ 2.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime
alias subl="sublime"
alias openconflict="git diff --name-only | uniq | xargs sublime"
alias gbv="git branch -vv"
alias count="ls -lR | grep ^d | wc -l"
alias gitrmmerged="git branch --merged | egrep -v '(^\*|master|develop)' | xargs -n 1 git branch -d"
alias gitrmtracking="git fetch -p origin"
alias network="netstat -rn | grep default"
alias pinggoogle="ping 8.8.8.8"
alias retropie="ssh pi@192.168.178.144"
alias mediapie="ssh osmc@192.168.1.8"
alias cleanatom= "atom . --clear-window-state"
alias lowpowermode="quitapp Coin Tick; quitapp Dropbox; quitapp Docker; quitapp WacomTabletDriver; blueutil power 0; quitapp Spotify"

# Show commits by username
# $ guc username
function guc() { git log --author="$@" --pretty=format:"%h - %an, %ar : %s" }

# Show and tail logs of a given Heroku app
# $ hrlog app-name
function hrlog() { heroku logs --tail --app "$@" }

# Show Heroku app process status
# $ hrstatus app-name
function hrstatus() { heroku ps --app "$@" }

# Start/Stop Heroku app maintenance mode
# $ hrmain on/off app-name
function hrmain() { heroku maintenance:$1 --app "$2" }

# Stop/Restart Heroku app dyno
# $ hrps stop/restart app-name dyno
function hrps() { heroku ps:$1 $2 --app "$3" }
alias hr="echo hrlog app-name; echo hrstatus app-name; echo hrmain on/off app-name; echo hrps stop/restart app-name dyno"

# Gracefully quit a application
# $ quitapp application-name
function quitapp() { osascript -e "quit app \"$*\"" }

export NVM_DIR="/Users/stevenbax/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
. /usr/local/bin/z.sh

export PATH="$HOME/.yarn/bin:$PATH"
export PATH="/usr/local/php5/bin:$PATH"
