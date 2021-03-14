# ~/.profile: executed by the command interpreter for login shells.
# This file is not read by bash(1), if ~/.bash_profile or ~/.bash_login
# exists.
# see /usr/share/doc/bash/examples/startup-files for examples.
# the files are located in the bash-doc package.

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
#umask 022

# if running bash
if [ -n "$BASH_VERSION" ]; then
    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
	. "$HOME/.bashrc"
    fi
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/.local/bin" ] ; then
    PATH="$HOME/.local/bin:$PATH"
fi

# Go PATH
#export GOROOT=$HOME/go1.15.5.linux-amd64
export GOROOT=$HOME/go1.16.linux-amd64
export PATH=$GOROOT/bin:$PATH
export GOPATH=$HOME/go
export GOBIN=$HOME/go/bin
export PATH=$PATH:$GOBIN

# rust PATH
export PATH="$HOME/.cargo/bin:$PATH"

# fasd eval
eval "$(fasd --init auto)"

# dotfiles bin/ PATH
export PATH=$PATH:$HOME/.dotfiles/bin

# random Applications/ PATHS
for app in $HOME/Applications/*; do
	if [ ! -d "$app" ]; then
		continue
	fi
  if [ ! -d "${app}/bin" ]; then
    continue
  fi
	export PATH=$PATH:$app/bin
done
export PATH=$PATH:$HOME/Applications/Postman

# HOME/bin PATH
export PATH=$PATH:$HOME/bin

# ruby (gem) PATH
export PATH=$PATH:$HOME/.gem/bin

export PATH=$PATH:/opt/gradle/gradle-4.10.2/bin
export PATH=$PATH:/home/ia/Applications/tigervnc-1.9.0.x86_64/usr/bin
export PATH=$PATH:/home/ia/dev/phacility/arcanist/bin
# export DOCKER_HOST=127.0.0.1:2375
# export PATH=$PATH:/home/ia/bin/WebStorm-192.6817.13/bin
export PATH=$PATH:/home/ia/bin/pycharm-professional-2019.2.4/bin
export PATH=$PATH:/home/ia/.dotfiles/private/bin
# export PATH=$PATH:/home/ia/firefox
export PATH=$PATH:/home/ia/Qt/Tools/QtCreator/bin
export PATH=$PATH:/usr/local/android-studio/bin
# export PATH="$PATH:/usr/lib/dart/bin"
export PATH=$PATH:/home/ia/.emacs.d/bin

. <(ethrpc completion) || true

export ZOOM_HOME=${HOME}/zoomus
