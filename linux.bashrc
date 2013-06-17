## -----------------------------------------------------
## SERVER - /ETC/BASH.BASHRC (UBUNTU/DEBIAN)
## -----------------------------------------------------
export HISTCONTROL=erasedups
export ACK_OPTIONS=--type-set=php=.php,.module,.inc,.install

## UBUNTU/DEBIAN ONLY ##
LOGS=/var/log
alias sep='echo "---"'
alias e='vi ~/devkit/' #works nice with NERD Tree
alias r='source /etc/profile; source ~/.profile; source ~/.bashrc'
alias eh='sudo vi /etc/hosts'
alias ep='vi /etc/php5/apache2/php.ini'
alias vsftpd.r="sudo /etc/init.d/vsftpd restart"
alias nx.stop='sudo /etc/init.d/nginx stop'
alias nx.start='sudo /etc/init.d/nginx start'
alias fcgi.stop='killall -9 php5-cgi'
alias fcgi.start='sudo /etc/init.d/init-fastcgi start'
alias ap.rs='sudo /etc/init.d/apache2 restart'
alias ap.rl='sudo /etc/init.d/apache2 reload'
alias ap.0='sudo /etc/init.d/apache2 stop'
alias ap.1='sudo /etc/init.d/apache2 start'
alias ap.log='tail -f /var/log/apache2/error.log'

# A/V
alias loop='mplayer -loop 0 -volume 10' #Plays an audio/video file with loop

# Communications
alias mail.log='tail -f /var/log/mail.log'
alias ir='irssi'
alias wee='weechat-curses'

# apt-get
alias apt='apt-get install'
alias remove='apt-get remove'
alias search='apt-cache search'

# MySQL
alias my.stop='/etc/init.d/mysql stop'
alias my.start='/etc/init.d/mysql start'
alias my.rs='service mysql restart'

## Bash helpers ##
alias '...'='cd ../../../'
alias '..'='cd ../../'
alias h='history'
alias c='clear'
alias untar='tar zxvf'
alias flush='sudo /etc/init.d/networking restart'
alias ip='ifconfig | ack "192|10.0"'
alias archive.w='wget -k -m -r'
alias archive.c='wget -k -m -r'
alias dl='curl -C - -O'
alias dict='curl dict://dict.org/d:'
alias showpubkey='cat ~/.ssh/id_rsa.pub'
alias copypubkey='cat ~/.ssh/id_rsa.pub | pbcopy'
alias pastepubkey='mkdir ~/.ssh; chmod 700 ~/.ssh; cd ~/.ssh; touch authorized_keys; chmod 600 authorized_keys; vi authorized_keys'
alias ssh.ls='cd ~/.ssh/; ls -alF'
alias noexe='sudo rm -f *.exe' #Removes all *.exe files in a folder. Good for removing viruses from thumbdrives.
alias phpinfo='echo "<?php phpinfo(); ?>" | sudo tee -a info.php'
alias xx='echo; echo "-------------------------------------------------------------------"; echo'
alias 755folders="find . ./ -type d -exec chmod 755 {} \;"
alias 644files="find . ./ -type f -exec chmod 644 {} \;"
alias 777folders="find . ./ -type d -exec chmod 777 {} \;"
alias 777files="find . ./ -type f -exec chmod 777 {} \;"
alias conn='netstat -nl | grep tcp4' #Active connections
alias v='vim'
alias v.='vim .'
alias sv='sudo vim'
alias ev='vim ~/.vimrc'
alias em='emacs'
alias ah='alias -p | ack -C ' #alias help
alias a='ack-grep'
alias cphere='pwd | pbcopy' #copy the current path

# Git
# ------------------------------------------------------------------------------------------------ #

alias gs='git status'
alias gp='git push -v'
alias gpo='git push -v origin' #push to origin all branches
alias gpom='git push -v origin master' #push to origin the master branch
alias ga='git add'
alias gu='git pull'
alias guom='git pull origin master'
alias gl='git log'
alias gl1='echo "#---"; git log --pretty=oneline; echo "#---";'
alias grm='git status | grep deleted | awk '\''{print $3}'\'' | xargs git rm' #git rm all deleted files
alias gc='git commit -m'
alias gi='vi .gitignore'
alias gd='git diff'
alias gdt='git difftool'
alias grao='git remote add origin'
alias gsu='git submodule update'

alias gb='git branch'
alias gba='git branch -a'
alias gsh='git show'
alias gn='nub'
alias gco='git checkout'
alias gg='git gui'

# Subversion
# ------------------------------------------------------------------------------------------------ #

export SVN_EDITOR=vi
alias sup='echo ""; date; svn update; echo ""'
alias sexternal='svn propedit svn:externals .'
alias sl='svn log --limit'
alias slist='svn list'
alias ss='svn status'
alias sq='svn status -q'
alias scl='svn cleanup'
alias sm='svn move'
alias sc='svn commit -m'
alias scc='svn commit'
alias sa='svn add'
alias sx='svn delete'
alias sr='svn revert'
alias si='svn propset svn:ignore'
alias si.r='svn propset -R svn:ignore'
alias svnclear='find . -name .svn -print0 | xargs -0 rm -rf' #removes all .svn files. use with caution.
alias sudosvnclear='sudo find . -name .svn -print0 | xargs -0 sudo rm -rf' #removes all .svn files. use with caution.
alias sa*='svn status | grep "^\?" | awk "{print \$2}" | xargs svn add' # adds all unadded files
alias sx*='svn status | grep "^\!" | awk "{print \$2}" | xargs svn delete' # deletes all absent files

## CVS ##
alias cup='cvs update'
alias ca='cvs add'
alias cx='cvs remove'
alias cc='cvs commit -m'
alias clu='echo ""; echo "Getting LAST UPDATED DATE"; cvs log -N | grep ^date: | sort | tail -n 1 | cut -d\; -f1'
alias clearcvs="find . -depth -name 'CVS' -exec rm -rf '{}' \; -print"

## Rails ##
alias r.dm='rake db:migrate'
alias r.dfl='rake db:fixtures:load'
alias r.s='ruby script/server'
alias rg.i='sudo gem install --include-dependencies'

# CSS, LESS, SASS, CoffeeScript
# ------------------------------------------------------------------------------------------------ #
alias cw='cake watch'


# Rattan
# ------------------------------------------------------------------------------------------------ #
alias getrattan='git clone git://github.com/kriskhaira/rattan.git'