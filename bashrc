# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
[ -z "$PS1" ] && return

# don't put duplicate lines or lines starting with space in the history.
# See bash(1) for more options
HISTCONTROL=ignoreboth

# append to the history file, don't overwrite it
shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
HISTSIZE=5000
HISTFILESIZE=10000

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

# If set, the pattern "**" used in a pathname expansion context will
# match all files and zero or more directories and subdirectories.
#shopt -s globstar

# make less more friendly for non-text input files, see lesspipe(1)
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [ -z "$debian_chroot" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
#force_color_prompt=yes

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	# We have color support; assume it's compliant with Ecma-48
	# (ISO/IEC-6429). (Lack of such support is extremely rare, and such
	# a case would tend to support setf rather than setaf.)
	color_prompt=yes
    else
	color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -GFh --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

#git auto-completion
if [ -f /etc/bash_completion ]; then
      . /etc/bash_completion
fi

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# Alias definitions.
# You may want to put all your additions into a separate file like
# ~/.bash_aliases, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.

if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi

# enable programmable completion features (you don't need to enable
# this, if it's already enabled in /etc/bash.bashrc and /etc/profile
# sources /etc/bash.bashrc).
if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
    . /etc/bash_completion
fi

########################################
alias ..=".."
alias ..2="../.."
alias ..3="../../.."
alias ..4="../../../.."
alias ..5="../../../../.."
function mkdircd () { mkdir -p "$@" && eval cd "\"\$$#\""; }

########################################
# SERVERS
########################################
#Junior Research Aread
alias ssh_cm="ssh rhadidi@cosmos.cc.gt.atl.ga.us" #IDM server 
alias ssh_gam="ssh rhadidi@gardenmint.cc.gt.atl.ga.us"
alias ssh_mm="ssh rhadidi@marshmint.cc.gt.atl.ga.us"
alias ssh_pc="ssh rhadidi@purpleconeflower.cc.gt.atl.ga.us" #Torque Main Server & /hparch

#Near Gateway
alias ssh_afd="ssh rhadidi@africandaisy.cc.gt.atl.ga.us"
alias ssh_amd="ssh rhadidi@americandaisy.cc.gt.atl.ga.us" #NFS /trace
alias ssh_bl="ssh rhadidi@blacklotus.cc.gt.atl.ga.us" #IDM replica
alias ssh_fim="ssh rhadidi@fieldmint.cc.gt.atl.ga.us" #GlusterFS(/hparch_gluster)
alias ssh_sd="ssh rhadidi@sunshinedaisy.cc.gt.atl.ga.us"
alias ssh_si="ssh rhadidi@sweetiris.cc.gt.atl.ga.us"
alias ssh_rl="ssh rhadidi@redlotus.cc.gt.atl.us"
alias ssh_vl="ssh rhadidi@valleylily.cc.gt.atl.ga.us"
alias ssh_wl="ssh rhadidi@waterlily.cc.gt.atl.ga.us"
alias ssh_wc="ssh rhadidi@whiteclover.cc.gt.atl.ga.us"
alias ssh_wm="ssh rhadidi@watermint.cc.gt.atl.ga.us"

#Near Prasun
alias ssh_am="ssh rhadidi@applemint.cc.gt.atl.ga.us"  #GlusterFS(/hparch_gluster)
alias ssh_asd="ssh rhadidi@asterdaisy.cc.gt.atl.ga.us" #GlusterFS(/hparch_gluster)
alias ssh_crd="ssh rhadidi@crowndaisy.cc.gt.atl.ga.us" #IDM replica
alias ssh_cf="ssh rhadidi@cactusflower.cc.gt.atl.ga.us" #GlusterFS(/hparch_gluster)
alias ssh_b="ssh rhadidi@boson.cc.gt.atl.ga.us"
alias ssh_q="ssh rhadidi@quark.cc.gt.atl.ga.us"
alias ssh_rc="ssh rhadidi@redclover.cc.gt.atl.ga.us"
alias ssh_kfd="ssh rhadidi@kingfisherdaisy.cc.gt.atl.ga.us"
alias ssh_tcs="ssh rhadidi@tricolorsage.cc.gt.atl.ga.us"

#Near Printer
alias ssh_mh="ssh rhadidi@mexicanhat.cc.gt.atl.ga.us" #GlusterFS(/hparch_gluster)
alias ssh_wsf="ssh rhadidi@wildsunflower.cc.gt.atl.ga.us" #GlusterFS(/hparch_gluster)

#CoC Room Machines
alias ssh_bef="ssh rhadidi@bearflower.cc.gt.atl.ga.us"
alias ssh_bd="ssh rhadidi@butterdaisy.cc.gt.atl.ga.us" #NFS /trace1 /trace2
alias ssh_blf="ssh rhadidi@blanketflower.cc.gt.atl.ga.us"
alias ssh_fom="ssh rhadidi@forestmint.cc.gt.atl.ga.us"
alias ssh_gd="ssh rhadidi@giantdaisy.cc.gt.atl.ga.us" #NFS home
alias ssh_ha="ssh rhadidi@heathaster.cc.gt.atl.ga.us"
alias ssh_ht="ssh rhadidi@himalayatulip.cc.gt.atl.ga.us"
alias ssh_ip="ssh rhadidi@icelandpoppy.cc.gt.atl.ga.us"
alias ssh_na="ssh rhadidi@newyorkaster.cc.gt.atl.ga.us"
alias ssh_pm="ssh rhadidi@peppermint.cc.gt.atl.ga.us"
alias ssh_pt="ssh rhadidi@parrottulip.cc.gt.atl.ga.us"
alias ssh_r="ssh rhadidi@rose.cc.gt.atl.ga.us"
alias ssh_st="ssh rhadidi@safaritulip.cc.gt.atl.ga.us"
alias ssh_tt="ssh rhadidi@triumphtulip.cc.gt.atl.ga.us"
alias ssh_wr="ssh rhadidi@wildrose.cc.gt.atl.ga.us"
alias ssh_z="ssh rhadidi@zinnia.cc.gt.atl.ga.us"

#Near Entrance
alias ssh_fu="ssh rhadidi@furyx.cc.gt.atl.ga.us"
alias ssh_la="ssh rhadidi@lamint.cc.gt.atl.ga.us"

#ETC
alias ssh_br="ssh rhadidi@branon.cc.gt.atl.ga.us"
alias ssh_ps="ssh rhadidi@purplesage.cc.gt.atl.ga.us"
alias ssh_pm="ssh rhadidi@peppermint.cc.gt.atl.ga.us"
alias ssh_wi="ssh rhadidi@walliris.cc.gt.atl.ga.us"
alias ssh_yl="ssh rhadidi@yellowlotus.cc.gt.atl.ga.us"
alias ssh_cr="ssh rhadidi@cherokeerose.cc.gt.atl.ga.us"
alias ssh_sm="ssh rhadidi@spearmint.cc.gt.atl.ga.us"
alias ssh_cl="ssh rhadidi@callalily.cc.gt.atl.ga.us"
alias ssh_grm="ssh rhadidi@graymint.cc.gt.atl.ga.us"
alias ssh_prd="ssh rhadidi@parisdaisy.cc.gt.atl.ga.us"
alias ssh_bld="ssh rahdidi@bluedaisy.cc.gt.atl.ga.us"
alias ssh_stl="ssh rhadidi@starlotus.cc.gt.atl.ga.us"
alias ssh_sl="ssh rhadidi@sacredlotus.cc.gt.atl.ga.us"
alias ssh_sul="ssh rhadidi@sunnylotus.cc.gt.atl.ga.us"
alias ssh_ck="ssh rhadidi@corokia.cc.gt.atl.ga.us"
alias ssh_qat="ssh rhadidi@quartet.cc.gt.atl.ga.us"
alias ssh_qit="ssh rhadidi@quintet.cc.gt.atl.ga.us"
alias ssh_spd="ssh rhadidi@spanishdaisy.cc.gt.atl.ga.us"
alias ssh_pad="ssh rhadidi@parisdaisy.cc.gt.atl.ga.us"
alias ssh_rm="ssh rhadidi@rosemallow.cc.gt.atl.ga.us"

#######################################
#Git Redhat display warning
unset SSH_ASKPASS

alias rmf="/bin/rm"
alias rm="gvfs-trash"

#PACE Cluster
alias ssh_pace="ssh rhadidi6@ece.pace.gatech.edu"

alias cdd="cd /RAMYAD"
alias cdg="cd /hparch_gluster/ramyad"

alias trash="gvfs-trash"

export GLUSTER=/hparch_gluster/ramyad

#export PATH_TOOLS_MACSIM=/home/rhadidi/sim/macsim_internal_ramyad/tools
export PATH_TOOLS_MACSIM=/home/rhadidi/scratch/src/sst-git/sst/elements/macsimComponent/internal/tools

export PATH_CUDA=/usr/local/cuda/bin
export PATH_CUDA_LIB=/usr/local/cuda/lib64:/usr/local/cuda/lib
export CUDA_INSTALL_PATH=/usr/local/cuda


PATH_ANACONDA=""
if [ -d /usr/bin/anaconda3/ ]; then
    export PATH_ANACONDA=/usr/bin/anaconda3
fi

export MPIHOME=$HOME/local/packages/OpenMPI-1.8
export MPICC=mpicc 
export MPICXX=mpicxx

#export DRAMSIM2_HOME=$HOME/local/packages/DRAMSim2
export DRAMSIM2_HOME=/home/common/DRAMSim2
#export DRAMSIM2_HOME=/home/rhadidi/scratch/src/DRAMSim2

export BOOST_HOME=$HOME/local/packages/boost-1.56 

export SST_HOME=$HOME/local/sst
export SST_BIN=$HOME/local/sst/bin

export PATH=$PATH_ANACONDA:$PATH_CUDA:$PATH_TOOLS_MACSIM:$MPIHOME/bin:$SST_HOME/bin:/home/rhadidi/local/bin:/usr/bin:/usr/sbin:/bin:/usr/local/bin:/usr/local/sbin:/sbin
export LD_LIBRARY_PATH=/home/rhadidi/local/lib:$PATH_CUDA_LIB:$SST_HOME/lib/sst:$MPIHOME/lib:$BOOST_HOME/lib:$LD_LIBRARY_PATH:/usr/local/lib
export LIBRARY_PATH=/home/rhadidi/local/lib:$PATH_CUDA_LIB:$SST_HOME/lib/sst:$MPIHOME/lib:$BOOST_HOME/lib:$LD_LIBRARY_PATH:/usr/local/lib
export MANPATH=/home/rhadidi/local/man:$MPIHOME/share/man:$DYLD_LIBRARY_PATH
export C_INCLUDE_PATH=/home/rhadidi/local/include:/usr/local/include
export CPLUS_INCLUDE_PATH=/home/rhadidi/local/include:/usr/local/include

#export SIM_RESULT_DIR=/hparch_gluster/ramyad/res
#export SIM_RESULT_DIR=/user/common/from_ramyad/res
export SIM_RESULT_DIR=/home/rhadidi/res

#######Tricolor#######
export PATH=/export_home/Xilinx/Vivado/2016.1/bin:$PATH

######Cubed########
export PATH=/opt/hmc_board/picocomputing-5.4.2.0/bin:$PATH
alias vivado="/opt/Xilinx/16/Vivado/2016.1/bin/vivado"
export XILINXD_LICENSE_FILE=/opt/Xilinx/Xilinx.lic
