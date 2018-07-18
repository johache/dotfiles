# export PATH=/usr/local/bin:$PATH

# CONFIGURE ME:
set WS_DIR ~/workspace
set MCU_FOLDER $WS_DIR/MCU/MCU

# ===================================================================
# ALIASES
# ===================================================================
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -al'
alias llh='ls -alh'
alias cdt='cd /Users/johache/workspace'
alias cdl='cd ~/Library/Internet\ Plug-Ins'
alias v='nvim'
alias dc='cd'
alias gmock='$WS_DIR/googletest/googlemock/scripts/generator/gmock_gen.py'

function up 
  set ups
  for i in (seq 1 $argv[1])
    set ups "$ups../"
  end
  cd $ups
end

alias showSign='codesign -d --verbose=4' 
alias pss='python -m SimpleHTTPServer'
alias mm='mvn clean install'

function md
	mkdir $argv
	cd $argv
end

# ===================================================================
# LAUNCH SCRIPTS
# ===================================================================
set --export PATH $PATH $WS_DIR/depot_tools

set --export LSCOLORS GxFxCxDxBxegedabagaced
set --export LC_ALL en_US.UTF-8
set --export LANG en_US.UTF-8

# set the number of open files to be 1024
ulimit -S -n 10000

# Setting PATH for Python 3.4
# The orginal version is saved in .profile.pysave
set --export PATH /Library/Frameworks/Python.framework/Versions/3.4/bin $PATH
ssh-add -K ~/.ssh/id_rsa

# ===================================================================
# MCU
# ===================================================================
alias cdm='cd $MCU_FOLDER'
alias bm='ninja -C $MCU_FOLDER/libwebrtc/src/out/Default main -j 16'
alias bmt='ninja -C $MCU_FOLDER/libwebrtc/src/out/Default MCU_TEST -j 16'
alias mcu='eval $MCU_FOLDER/libwebrtc/src/out/Default/main'
function mcut 
 eval $MCU_FOLDER/libwebrtc/src/out/Default/MCU_TEST $argv
end

