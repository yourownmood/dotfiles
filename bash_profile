export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

alias mamp="cd /Applications/MAMP/htdocs"
alias ll="ls -al"
alias runhttp="python -m SimpleHTTPServer"
alias runphp="php -S localhost:8888"
alias chrome='open -a "Google Chrome"'
alias retropie="ssh pi@192.168.178.144"

export NVM_DIR="/Users/stevenbax/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
export PATH=/usr/local/php5/bin:$PATH

# locale settings, string mac/chinese/pycharm/git bug
# https://coderwall.com/p/ehvc8w/set-lang-variable-in-osx-terminal-app
export LANG="en_GB.UTF-8"
export LC_COLLATE="en_GB.UTF-8"
export LC_CTYPE="en_GB.UTF-8"
export LC_MESSAGES="en_GB.UTF-8"
export LC_MONETARY="en_GB.UTF-8"
export LC_NUMERIC="en_GB.UTF-8"
export LC_TIME="en_GB.UTF-8"
export LC_ALL=
