## ------------------------------------------
## OVERRIDE THE LINUX BASH.BASHRC
## - Go ahead and use this for your Mac
## ------------------------------------------
unset MAILCHECK
export CLICOLOR=1
export LSCOLORS="ExFxCxDxBxegedabagacad"
export LSCOLORS="gxfxcxdxbxegedabagacad"
alias flush='sudo dscacheutil -flushcache'
alias port.start='sudo port selfupdate; sudo port upgrade outdated;'
alias k='killall'
alias kd='killall Dock'
alias kf='killall Finder'
alias o='open'
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
alias a='ack'
alias cpu='top -FR -o cpu -n 10'
alias getmousespeed='defaults read -g com.apple.mouse.scaling'
alias setmousespeed='defaults write -g com.apple.mouse.scaling'

# NETWORKING
# ------------------------------------------------------------------------------------------------ #
alias checkvpn="netstat -rn | grep 192.168" #check if VPN is working
alias checknet="ifconfig | ack en -A 3"

# SUBVERSION
# ------------------------------------------------------------------------------------------------ #
#alias svndiff='svn diff --diff-cmd ~/bin/svnopendiffshim.py'
alias ss='svn-color status'
alias svn-fm='svn diff --diff-cmd svn-fm'
alias svnrsync='rsync -av --exclude=.svn --delete'

# PHP
# ------------------------------------------------------------------------------------------------ #
alias pyrus='sudo php /usr/lib/php/pyrus.phar'

# RAILS
# ------------------------------------------------------------------------------------------------ #
alias r.sq='o db/development.sqlite3' #opens the development SQLite db in your Mac's default sqlite editor

# PYTHON & DJANGO
# ------------------------------------------------------------------------------------------------ #

PYTHON_PACKAGES='/opt/local/Library/Frameworks/Python.framework/Versions/2.6/lib/python2.6/site-packages'
alias px='source $PYTHON_PACKAGES/pinax/bin/activate'
alias dj='python manage.py'
alias djrun='python manage.py runserver'
alias djrun.vf='python manage.py runserver 172.16.236.1:8001'
alias djsyncdb='python manage.py syncdb'
alias djrebuild='python manage.py index --rebuild'
alias djclean='px; echo ""; djsyncdb; echo ""; djrebuild; echo ""'
alias djnew='django-admin.py startproject mysite'

# LAMP
# ------------------------------------------------------------------------------------------------ #
alias ap.start="sudo apachectl start"
alias ap.stop="sudo apachectl stop"
alias ap.rs="sudo apachectl restart"
alias my.start='mysql.server start'
alias my.stop='mysql.server stop'
alias my.rs='mysql.server restart'
alias isdp="is-drupal"

# PostgreSQL (Homebrew version)
# ------------------------------------------------------------------------------------------------ #
alias pg.1="pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start"
alias pg.0="pg_ctl -D /usr/local/var/postgres stop -s -m fast"