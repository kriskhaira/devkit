## ------------------------------------------
## OVERRIDE THE LINUX BASH.BASHRC
## - Go ahead and use this for your Mac
## - Tested on Snow Leopard
## ------------------------------------------
unset MAILCHECK
export EDITOR=vi
export CLICOLOR=1
export LSCOLORS="ExFxCxDxBxegedabagacad"
export LSCOLORS="gxfxcxdxbxegedabagacad"
alias flush='sudo dscacheutil -flushcache'
alias port.start='sudo port selfupdate; sudo port upgrade outdated;'
alias k='killall'
alias kd='killall Dock'
alias kf='killall Finder'
alias o='open ./'
alias m='mate'
alias mp='echo ""; pwgen -c -n -s -B -y 14 -1 10; echo""'
#This fixes the blue tint problem as described here: http://tinyurl.com/mac-blue-tint
alias fixtint='/System/Library/Frameworks/ApplicationServices.framework/Versions/A/Frameworks/CoreGraphics.framework/Versions/A/Resources/DMProxy'
alias mailoptimize="sqlite3 ~/Library/Mail/Envelope\ Index vacuum index; sqlite3 ~/Library/Mail/Envelope\ Index vacuum subjects;"
alias showhidden='defaults write com.apple.finder AppleShowAllFiles -bool TRUE; killall Finder'
alias hidehidden='defaults write com.apple.finder AppleShowAllFiles -bool FALSE; killall Finder'
alias growl="growlnotify -m"
alias ok='afplay /System/Library/Sounds/Glass.aiff'
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CFa'
alias ag='ack'
alias t="vi ~/Desktop/TODO.txt"

# Networking
alias checkvpn="netstat -rn | grep 192.168" #check if VPN is working 

#alias svndiff='svn diff --diff-cmd ~/bin/svnopendiffshim.py' 
alias ss='svn-color status'
alias svnfmdiff='svn diff --diff-cmd fmdiff' 
alias svnrsync='rsync -av --exclude=.svn --delete'

## Python/Django ##
PYTHON_PACKAGES='/opt/local/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages'
alias px='source $PYTHON_PACKAGES/pinax/bin/activate'
alias dj='python manage.py'
alias djrun='python manage.py runserver'
alias djrun.vf='python manage.py runserver 172.16.236.1:8001'
alias djsyncdb='python manage.py syncdb'
alias djrebuild='python manage.py index --rebuild'
alias djclean='px; echo ""; djsyncdb; echo ""; djrebuild; echo ""'
alias djnew='django-admin.py startproject mysite'

## System Monitoring
alias cpu='top -FR -o cpu -n 10'

## Mac tracking speed
alias getmousespeed='defaults read -g com.apple.mouse.scaling'
alias mousespeed='defaults write -g com.apple.mouse.scaling'

# LAMP
alias ap.1="sudo apachectl start"
alias ap.0="sudo apachectl stop"
alias ap.rs="sudo apachectl restart"
alias mysql.1='mysql.server start'
alias mysql.0='mysql.server stop'
alias mysql.rs='mysql.server restart'
alias isdp="is-drupal"

# PostgreSQL (installed with Homebrew)
alias pg.1="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg.0="pg_ctl -D /usr/local/var/postgres stop -s -m fast"

