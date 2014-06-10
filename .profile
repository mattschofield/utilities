# The ultimate vimrc
export PROMPT_COMMAND='PS1="\[\033[0;33m\][\!]\`if [[ \$? = "0" ]]; then echo "\\[\\033[32m\\]"; else echo "\\[\\033[31m\\]"; fi\`[\u: \`if [[ `pwd|wc -c|tr -d " "` > 18 ]]; then echo "\\W"; else echo "\\w"; fi\`]\$\[\033[0m\] "; echo -ne "\033]0;`hostname -s`:`pwd`\007"'

# Increase the maximum number of open files. This is used for Siege.
ulimit -n 10000

export HISTFILESIZE=5000          # Store 5000 commands in history
export HISTCONTROL=erasedups    # Don't put duplicate lines in the history.

eval "$(rbenv init -)"

export PATH=/usr/local/bin:$PATH
export PATH=$PATH:/usr/local/go/bin

# Set up GOROOT and GOPATH
export GOPATH=~/repos/go
export PATH=$PATH:$GOROOT/bin
export PATH=$PATH:${GOPATH//://bin:}/bin

export SIEGE_HOME=/usr/local/Cellar/siege/3.0.5

# Postgres commands - won't be used, but useful for format
alias pg_start_epf="pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start"
alias pg_start_six="pg_ctl -D /usr/local/var/postgres/ -l /usr/local/var/postgres/server.log start"

# Aliases
alias deploy="git push && git push deploy"
alias subl="open -a /Applications/Sublime\ Text.app $@"
alias startup="~/.startup/start-work.sh"
alias api="cd ~/repos/umg-datalayer-hermes"

alias redshift="psql -h newtech-fabric.czpwavkj0iay.us-east-1.redshift.amazonaws.com -U schofim -d fabric -p 5439"

# add spacer to Dock
alias space-add="defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}' && killall Dock"

# PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting

# Start the fish shell
# fish

# Add a `fortune` command for good measure.
fortune
