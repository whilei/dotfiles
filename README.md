README last updated: 08-12-17@12_03_04

## Credits
Thank you Holman, Paul, JFraz, Cowboy... the list goes on and my memory nor patience does
not.

Much of the dir structure is based on Holman-esque genre-fications.



## Table of contents
> `tree >> /Users/ia/.dotfiles/README.md`

```
.
├── README.md
├── TOC.md
├── bashers
│   ├── 10-random-alphanum.bash
│   ├── aka.bash
│   ├── aliases.bash
│   ├── bash-utils.bash
│   ├── curl.bash
│   ├── delete-empty-dirs.bash
│   ├── distinct-file-types.bash
│   ├── emojifind.bash
│   ├── encryptor.bash
│   ├── find-git-configs-and-do-.bash
│   ├── hexadecimal.bash
│   ├── last-modified.bash
│   ├── list-dir-contents-without-cd.bash
│   ├── print-empty-dirs.bash
│   ├── sort-downloads.bash
│   └── substitute-extensions.bash
├── bin
│   ├── ging
│   ├── gingsvm
│   ├── open
│   │   ├── downloads
│   │   └── screenshots
│   ├── sign
│   └── tellme
├── bin-aliases
│   └── aliases.bash
├── etc
│   └── emerald.bash
├── funk
│   ├── README.md
│   ├── aliases.bash
│   ├── alot.bash
│   ├── bank.bash
│   ├── dev-whiteboard.bash
│   ├── gtw.bash
│   ├── housekeep.sh
│   ├── just.bash
│   ├── knote.bash
│   ├── paper.sh
│   ├── paulmiller.bash
│   ├── rememberer.bash
│   ├── scrape-images.bash
│   ├── scratchers.bash
│   ├── sms.bash
│   └── wq.bash
├── git
│   ├── aliases.bash
│   ├── git-completion.bash
│   ├── git-prompt-init.bash
│   ├── git-prompt.bash
│   └── gitimg.bash
├── go
│   ├── aliases.bash
│   ├── env.bash
│   └── gotest-example.txt
├── iterm-prefs
│   └── com.googlecode.iterm2.plist
├── jlwarez
│   ├── Awkedy\ AwkAWk.sh
│   ├── CUrl.sh
│   ├── Externalized\ Random\ access\ objects\ backup.java
│   ├── Piechart\ R.sh
│   ├── RsyncFlyDie.sh
│   ├── S3cmd.sh
│   ├── SED.sh
│   ├── batch\ genome.sh
│   ├── dbGaP\ decrypt.sh
│   ├── find\ and\ list\ subfolders.sh
│   ├── mappability.sh
│   └── touchSpecific.sh
├── network
│   └── aliases.bash
├── osx
│   ├── aliases.bash
│   ├── set-defaults.sh
│   └── terminals
│       ├── Homebrew\ -\ transparent.terminal
│       ├── Stars\ -\ transparent.terminal
│       └── Stripes\ -\ transparent.terminal
├── private
│   ├── aliases.bash
│   ├── bbi.bash
│   ├── checkups.bash
│   ├── commands.bash
│   ├── contacts.sh
│   ├── env.bash
│   ├── github.bash
│   └── twitter.bash
├── python
│   ├── env.bash
│   └── py-serve.bash
├── remembered
├── ruby
│   ├── aliases.bash
│   └── env.bash
├── scripts
│   ├── convert_append_all.bash
│   ├── cracker.sh
│   ├── dreamhost_python_setup.sh
│   ├── emacs.daemon.sh
│   ├── every-other-file.sh
│   ├── google-drive-export.sh
│   ├── readem.sh
│   ├── screenshotter.sh
│   └── shit-i-changed-my-github-username.sh
├── sedawk
│   └── aliases.bash
├── system
│   ├── aliases.bash
│   ├── disk.bash
│   ├── env.bash
│   ├── fuzzy.bash
│   ├── navigation.bash
│   ├── paths.bash
│   └── postgres.bash
└── vim
    ├── env.bash
    └── vi-commands-basic.txt

20 directories, 101 files
```

## Aliases
> alias

```
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ..4='cd ../../../../'
alias ..5='cd ../../../../../'
alias GITIT='git add -A && git commit -S -m'
alias GL='git log --branches=* --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %Cgreen(%cr)  %n%C(yellow)%B%Creset" --abbrev-commit --date=relative --stat'
alias GLb='git log --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %Cgreen(%cr)  %n%C(yellow)%B%Creset" --abbrev-commit --date=relative --stat'
alias Gl='git log --branches=* --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %Cgreen(%cr) " --abbrev-commit --date=relative --stat'
alias Glb='git log --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %Cgreen(%cr) " --abbrev-commit --date=relative --stat'
alias a='fasd -a'
alias airport='/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport'
alias atom='/usr/local/bin/atom'
alias b='blink'
alias bb='blink 4 0.2'
alias bdfz='bdf'
alias be='bundle exec'
alias becapdep='bundle exec cap production deploy'
alias becapres='bundle exec cap production puma:restart'
alias bi='bundle install'
alias bios='gulp --cordova '\''build ios'\'''
alias busy='cat /dev/urandom | hexdump -C | grep '\''ca fe'\'''
alias capdr='cap  deploy:restart'
alias captl='cap  rubber:tail_logs'
alias catimgls='lsimg'
alias cdb='cdr'
alias cdd='ccd'
alias cdt='cdf'
alias chrome='open -a google\ chrome'
alias chx='chmod +x'
alias cl='cdl'
alias co='git checkout'
alias cob='cof'
alias cofz='cof'
alias comingover='echo https://www.youtube.com/watch?v=IX2EGn7NQI4 | pbcopy'
alias cotf='cot'
alias cotfz='cot'
alias cotz='cot'
alias coz='cof'
alias d='fasd -d'
alias date_today='today_date'
alias datestamp='date_stamp'
alias dbb='dbrightness'
alias dbright='dbrightness'
alias dbx='cd ~/Dropbox; command gls -lAhp --color;'
alias dc='docker-compose'
alias dec='decrypt'
alias desk='cd ~/Desktop; command gls -lAhp --color;'
alias dls='cd ~/Downloads/; command gls -lAhp --color;'
alias dm='docker-machine'
alias dockapp='docker-compose run app'
alias dockbuild='docker-compose build'
alias dockstart='docker-machine start'
alias dockup='docker-compose up'
alias dp='drive push -verbose'
alias drive_export_png='drive pull --export png --explicitly-export --exports-dir png_exports --same-exports-dir directory'
alias dummy='git'
alias e='emacsclient -t'
alias eb='emacsbare'
alias emofz='femoji'
alias emoji='femoji'
alias emojif='femoji'
alias emojifz='femoji'
alias emojime='femoji'
alias enc='encrypt'
alias f='fasd -f'
alias fco='cof'
alias fcot='cot'
alias fgbd='bdf'
alias firefox='open -a firefox'
alias fv='f -e vim'
alias fzco='cof'
alias fzcot='cot'
alias fzemoji='femoji'
alias fzgbd='bdf'
alias fzgco='cof'
alias fzji='femoji'
alias g='git'
alias gC='git commit -S'
alias gCm='git commit -S -m'
alias gL='git log --branches=* --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %Cgreen(%cr)  %+s%+b" --abbrev-commit --date=relative'
alias gLb='git log --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %Cgreen(%cr)  %+s%+b" --abbrev-commit --date=relative'
alias gP='git remote | xargs -L1 git push --all'
alias ga='git add'
alias gai='git add -i'
alias galias='git config --get-regexp alias'
alias gbd='git branch -D'
alias gbdf='bdf'
alias gbl='git branch --list'
alias gc='git commit'
alias gcam='git commit --amend'
alias gcb='git checkout -b'
alias gcm='git commit -m'
alias gco='git checkout'
alias gcof='cof'
alias gd='git diff --color | diff-so-fancy'
alias getemoji='femoji'
alias gethy='geth --log-status='\''sync=10'\'' --cache=128'
alias getmyip='myip'
alias gf='git fetch'
alias ggui='gitup'
alias git_alias='git config --get-regexp alias'
alias git_aliases='git config --get-regexp alias'
alias gitalias='git config --get-regexp alias'
alias gitaliases='git config --get-regexp alias'
alias gitit='git add -A && git commit -m'
alias gl='git log --branches=* --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %s %Cgreen(%cr) " --abbrev-commit --date=relative'
alias glb='git log --graph --pretty=format:"%Cred%h%Creset %C(cyan)%G? %C(bold blue)%an%Creset%C(auto)%d%Creset %s %Cgreen(%cr) " --abbrev-commit --date=relative'
alias gm='git merge'
alias gogogs='./darwin.gitea web -c custom/conf/dev.app.ini'
alias gogr='gogs repo'
alias gosync='launchctl -w load ~/Library/LaunchAgents/syncthing.plist'
alias gotv='go test -v'
alias gpa='git push gogs'
alias gpat='git push gogs --tags'
alias gpb='git push bitbucket'
alias gpgall='sign'
alias gpgsign='sign'
alias gpgsignall='sign'
alias gph='git push heroku'
alias gpo='git push origin'
alias gpot='git push origin --tags'
alias gpu='git push upstream'
alias gput='git push upstream --tags'
alias gpw='git push whilei'
alias gpwt='git push whilei --tags'
alias gr='git remote -v'
alias greb='git rebase'
alias grebi='git rebase -i'
alias grm='go run main.go'
alias gs='git status -sb'
alias gta='git tag -a'
alias gtl='git tag --list'
alias gwno='gulp watch --no-open'
alias hide_desk='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias hide_desktop='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias hidedesk='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias hidedesktop='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias hidem='defaults write com.apple.finder CreateDesktop -bool false && killall Finder'
alias hp='gitpushsub web master web'
alias hr='heroku run'
alias hrw='heroku run --remote web'
alias htop='sudo htop'
alias idiot='git'
alias iiftop='sudo iftop -i en1 -o 10s'
alias imgls='lsimg'
alias joyce='open -a ulysses'
alias k='git'
alias kbb='kbrightness'
alias kbright='kbrightness'
alias l='gls -lAhp --color'
alias lfm='lmf'
alias ll='gls -lAhp --color'
alias lll='gls -lAhpR --color'
alias lr='guard -P livereload'
alias lscatimg='lsimg'
alias lsd='ls -lahd */'
alias lt='gls -Altrph --color'
alias ltr='tree -alLhtDFC 2 -I .git'
alias ltrd='ltr -d'
alias md5sum='md5'
alias notif_off='launchctl unload -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist && killall -9 NotificationCenter'
alias notif_on='launchctl load -w /System/Library/LaunchAgents/com.apple.notificationcenterui.plist'
alias og='open -g'
alias ogh='open -g hammerspoon://'
alias paper='bash /Users/ia/.dotfiles/funk/paper.sh'
alias paste='pbpaste'
alias pgstart='postgres -D /usr/local/var/postgres'
alias pics='cd ~/Pictures/; command gls -lAhp --color;'
alias pms='pmset'
alias ps1_low='ps1_llg'
alias ps1_norm='ps1_lg'
alias ps1_short='ps1_sm'
alias ps1_small='ps1_sm'
alias ps1_sml='ps1_sm'
alias psg='ps aux | grep -v grep | grep -i -e VSZ -e'
alias pull='git pull'
alias pullar='git pull gogs'
alias pullor='git pull origin'
alias pullup='git pull upstream'
alias pullwh='git pull whilei'
alias rc='rails console'
alias rdbm='rake db:migrate'
alias rdbr='rake db:rollback'
alias remove_blank_lines='sed -i '\''/^\s*$/d'\'''
alias remove_dsstore='find . -name '\''*.DS_Store'\'' -type f -ls -delete'
alias rmrftags='git tag | xargs git tag -d'
alias rs='rails server'
alias rsi='bbi -r rstackers/rstacks'
alias rsp='rails s -p3002'
alias rvm-restart='rvm_reload_flag=1 source '\''/Users/ia/.rvm/scripts/rvm'\'''
alias rvrs='rvm use 2.2.2@rstacks_production'
alias rvsp='rvm use 2.2.3@spoop'
alias s='fasd -si'
alias safari='open -a safari'
alias sbx='cd ~/sandbox; command gls -lAhp --color;'
alias screenShotter='bash /Users/ia/.dotfiles/scripts/screenshotter.sh'
alias scw='screencapture -W -t jpg ~/Pictures/screenshots/07-12-17@12_50_01.jpg'
alias sd='fasd -sid'
alias sf='fasd -sif'
alias sha256='sha'
alias show_desk='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias show_desktop='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias showdesk='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias showdesktop='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias showem='defaults write com.apple.finder CreateDesktop -bool true && killall Finder'
alias signem='sign'
alias sizes='size'
alias slack='slackcli -h '\''general'\'' -u '\''Mr Is'\'' -e '\'':rocket:'\'''
alias slime='/Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl'
alias slinkyon='HUBOT_SLACK_TOKEN= /Users/ia/dev/slinky/bin/hubot -a slack'
alias slinkywakeup='curl heroku/keepalive'
alias snots='open /Users/ia/Pictures/screenshots'
alias ssf='ssh freya'
alias starte='emacs -nw --daemon > ~/logs/emacs.log 2>&1 &'
alias stfu='osascript -e '\''set volume output muted true'\'''
alias tailf='tail -f'
alias tailff='tail -f -n1000'
alias time_stamp='date_stamp'
alias timestamp='date_stamp'
alias to11='osascript -e '\''set volume 7'\'''
alias v='vim'
alias vf='vg'
alias vff='vg'
alias vlc='vlc *.mp3'
alias vlf='vg'
alias whatismyip='myip'
alias yank='pbcopy'
alias yp='rsync -avz -L --progress -h'
alias yps='rsync -avzu --delete --progress -h --backup --backup-dir='\''backup_2017-12-07'\'''
alias ypu='rsync -avzu --progress -h'
alias z='fasd_cd -d'
alias zz='pmset displaysleepnow'
alias zzz='pmset sleepnow'

```

## The 5 most recently modified
> gfind . -not -path "*.git*" -type f -printf "%-.22T+ %M %n %-8u %-8g %8s %Tx %.8TX %p\n" | sort | cut -f 2- -d ' ' | tail -5	>> /Users/ia/.dotfiles/README.md

```
-rwxr-xr-x 1 ia       staff         288 12/06/2017 11:06:51 ./bin/tellme
-rwxr-xr-x 1 ia       staff         715 12/08/2017 10:40:58 ./bin/ging
-rwxr-xr-x 1 ia       staff         810 12/08/2017 10:42:12 ./bin/gingsvm
-rwxr-xr-x 1 ia       staff        1945 12/08/2017 12:02:16 ./scripts/readem.sh
-rw-r--r-- 1 ia       staff        4293 12/08/2017 12:03:04 ./README.md
```

## Cloc
> `cloc . >> /Users/ia/.dotfiles/README.md`

```
     100 files     114 text files.
classified 114 filesDuplicate file check 114 files (110 known unique)Unique:      100 files                                               112 unique files.
Counting:  100      25 files ignored.

http://cloc.sourceforge.net v 1.64  T=0.51 s (180.9 files/s, 13990.3 lines/s)
--------------------------------------------------------------------------------
Language                      files          blank        comment           code
--------------------------------------------------------------------------------
Bourne Again Shell               66            510            823           3692
Bourne Shell                     23            462            702            571
JSON                              1              2              0            166
Java                              1             53              2             56
Javascript                        1             12             28             37
--------------------------------------------------------------------------------
SUM:                             92           1039           1555           4522
--------------------------------------------------------------------------------
```
