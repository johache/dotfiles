# export PATH=/usr/local/bin:$PATH

# ===================================================================
# ALIASES
# ===================================================================
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -al'
alias cdt='cd /Users/johache/workspace'
alias cdl='cd ~/Library/Internet\ Plug-Ins'
alias v='nvim'

function IPID
	rm -r npTemWebRTCPlugin.plugin 
	ln -s ~/Workspace/Temasys/skyway-webrtcplugin/build/projects/TemWebRTCPlugin/Debug/npTemWebRTCPlugin.plugin
end

function IPI
	cdl 
	IPID 
	cd -
end

function RMP
	cdl
	rm npTemWebRTCPlugin.plugin
	cd -
end

function IPL
	cdl
	ln -s ~/Workspace/Temasys/skyway-webrtcplugin/build/projects/TemWebRTCPlugin/Debug/npTemWebRTCPlugin.plugin
	cd -
end

function plugin
	killall Safari
	IPI
	open /Applications/Safari.app/
end

function up 
  set ups
  for i in (seq 1 $argv[1])
    set ups "$ups../"
  end
  cd $ups
end

alias fetchPlugin="git clone --recursive https://bitbucket.org/TemasysCommunications/skyway-webrtcplugin"
alias showSign='codesign -d --verbose=4' 
alias pss='python -m SimpleHTTPServer'
alias mm='mvn clean install'
alias cmr='cmake -DCMAKE_BUILD_TYPE=Release'

#md() { mkdir -p "$@" && cd "$@"; }
function md
	mkdir $argv
	cd $argv
end

# ===================================================================
# LAUNCH SCRIPTS
# ===================================================================
set --export PATH $PATH ~/workspace/depot_tools

set --export LSCOLORS GxFxCxDxBxegedabagaced
set --export LC_ALL en_US.UTF-8
set --export LANG en_US.UTF-8

# set the number of open files to be 1024
ulimit -S -n 1024

##
# Your previous /Users/johache/.profile file was backed up as /Users/johache/.profile.macports-saved_2014-04-01_at_11:13:53
##

# MacPorts Installer addition on 2014-04-01_at_11:13:53: adding an appropriate PATH variable for use with MacPorts.
#export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.


# MacPorts Bash shell command completion
#if [ -f `brew --prefix`/etc/bash_completion ]; then
#    . `brew --prefix`/etc/bash_completion
#fi

#source ~/git-completion.bash

# Setting PATH for Python 3.4
# The orginal version is saved in .profile.pysave
set --export PATH /Library/Frameworks/Python.framework/Versions/3.4/bin $PATH
