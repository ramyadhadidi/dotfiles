# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
  fi


######################################
# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls -GFh --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'

    alias less='less -r'
fi

#######################################
# Does not works with zsh
#git auto-completion
#if [ -f /etc/bash_completion ]; then
#      . /etc/bash_completion
#fi


# enable programmable completion features (you don't need to enable
#if [ -f /etc/bash_completion ] && ! shopt -oq posix; then
#    . /etc/bash_completion
#fi


########################################
# HPARCH SERVERS
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
alias ssh_ssd="ssh rhadidi@sunshinedaisy.cc.gt.atl.ga.us"
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
alias ssh_da="ssh rhadidi@damint.cc.gt.atl.ga.us"
alias ssh_sul="ssh rhadidi@sunnylotus.cc.gt.atl.ga.us"

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
alias ssh_ck="ssh rhadidi@corokia.cc.gt.atl.ga.us"
alias ssh_qat="ssh rhadidi@quartet.cc.gt.atl.ga.us"
alias ssh_qit="ssh rhadidi@quintet.cc.gt.atl.ga.us"
alias ssh_spd="ssh rhadidi@spanishdaisy.cc.gt.atl.ga.us"
alias ssh_pad="ssh rhadidi@parisdaisy.cc.gt.atl.ga.us"
alias ssh_rm="ssh rhadidi@rosemallow.cc.gt.atl.ga.us"
alias ssh_dl="ssh rhadidi@dalek.cc.gt.atl.ga.us"
alias ssh_sd="ssh rhadidi@sundrop.cc.gt.atl.ga.us"

#######################################
#Git Redhat display warning
unset SSH_ASKPASS

#PACE Cluster
alias ssh_pace="ssh rhadidi6@ece.pace.gatech.edu"

#cd shortcuts
alias cdd="cd /RAMYAD"
alias cdg="cd /hparch_gluster/ramyad"
export GLUSTER=/hparch_gluster/ramyad

#export PATH_TOOLS_MACSIM=/home/rhadidi/sim/macsim_internal_ramyad/tools
export PATH_TOOLS_MACSIM=/home/rhadidi/scratch/src/sst-git/sst/elements/macsimComponent/internal/tools


############### CUDA versions  ##############
if [[ $HOSTNAME == "branon.cc.gt.atl.ga.us" ]]
then
  #cuda 4.2
  echo "Cuda 4.2"
  export PATH_CUDA=/usr/local/cuda-4.2
  export PATH_CUDA_LIB=/usr/local/cuda-4.2/lib64:/usr/local/cuda-4.2/lib
  export CUDA_INCLUDE_PATH=/usr/local/cuda-4.2/include
  #cuda 5.5
  #echo "Cuda 5.5"
  #export PATH_CUDA=/usr/local/cuda-5.5
  #export PATH_CUDA_LIB=/usr/local/cuda-5.5/lib64:/usr/local/cuda-5.5/lib
  #export CUDA_INCLUDE_PATH=/usr/local/cuda-5.5/include
  #cuda 6.5
  #echo "Cuda 6.5"
  #export PATH_CUDA=/usr/local/cuda-6.5
  #export PATH_CUDA_LIB=/usr/local/cuda-6.5/lib64:/usr/local/cuda-6.5/lib
  #export CUDA_INCLUDE_PATH=/usr/local/cuda-6.5/include

  PATH_LLVM_BIN=/usr/local/src/llvm-3.4/build/Release+Asserts/bin
  PATH_LLVM_LIB=/usr/local/src/llvm-3.4/build/Release+Asserts/lib
elif [[ $HOSTNAME == "boson.cc.gt.atl.ga.us" ]]
then
  echo "Cuda Boson"
  export PATH_CUDA=/usr/bin
  export PATH_CUDA_LIB=/usr/lib64:/usr/lib
  export CUDA_INCLUDE_PATH=/usr/include/cuda
elif [[ $HOSTNAME == "furyx" ]]
then
  echo "Cuda Furyx"
  export PATH_CUDA=/usr/local/cuda/bin
  export PATH_CUDA_LIB=/usr/local/cuda/lib64 #Should add this to /etc/ld.so.conf.d/cuda.conf for sudoers
  export CUDA_INCLUDE_PATH=/usr/local/cuda/include
  export CUDA_ROOT=/usr/local/cuda
elif [[ $HOSTNAME == "jeep.cc.gt.atl.ga.us" ]]
then
  echo "Cuda Jeep"
  export PATH_CUDA=/usr/local/cuda-8.0/bin
  export PATH_CUDA_LIB=/usr/local/cuda-8.0/lib64 #Should add this to /etc/ld.so.conf.d/cuda.conf for sudoers
  export CUDA_INCLUDE_PATH=/usr/local/cuda-8.0/include
  export CUDA_ROOT=/usr/local/cuda-8.0
  export CUDA_HOME=/usr/local/cuda-8.0
else
  echo "Default Cuda"
  export PATH_CUDA=/usr/local/cuda/bin
  export PATH_CUDA_LIB=/usr/local/cuda/lib64:/usr/local/cuda/lib
  export CUDA_INCLUDE_PATH=/usr/local/cuda/include
  export CUDA_ROOT=/usr/local/cuda
fi

################ MACSIM SST Stuff ##########################

PATH_ANACONDA=""
#if [ -d /usr/bin/anaconda3/ ]; then
#    export PATH_ANACONDA=/usr/bin/anaconda3
#fi

export MPIHOME=$HOME/local/packages/OpenMPI-1.8
export MPICC=mpicc 
export MPICXX=mpicxx

#export DRAMSIM2_HOME=$HOME/local/packages/DRAMSim2
export DRAMSIM2_HOME=/home/common/DRAMSim2
#export DRAMSIM2_HOME=/home/rhadidi/scratch/src/DRAMSim2

export BOOST_HOME=$HOME/local/packages/boost-1.56 

export SST_HOME=$HOME/local/sst
#export SST_HOME=$HOME/local/sst-test

export SST_BIN=$HOME/local/sst/bin

export PATH=$PATH_ANACONDA:$PATH_CUDA:$PATH_TOOLS_MACSIM:$MPIHOME/bin:$SST_HOME/bin:/home/rhadidi/local/bin:$PATH_LLVM_BIN:/usr/bin:/usr/sbin:/bin:/usr/local/bin:/usr/local/sbin:/sbin
export LD_LIBRARY_PATH=/home/rhadidi/local/lib:$PATH_CUDA_LIB:$SST_HOME/lib/sst:$MPIHOME/lib:$BOOST_HOME/lib:$PATH_LLVM_LIB:/usr/local/lib
export LIBRARY_PATH=$LD_LIBRARY_PATH
export MANPATH=/home/rhadidi/local/man:$MPIHOME/share/man:$DYLD_LIBRARY_PATH
export C_INCLUDE_PATH=/home/rhadidi/local/include:/usr/local/include:$CUDA_INCLUDE_PATH
export CPLUS_INCLUDE_PATH=/home/rhadidi/local/include:/usr/local/include:$CUDA_INCLUDE_PATH

#export SIM_RESULT_DIR=/hparch_gluster/ramyad/res
#export SIM_RESULT_DIR=/user/common/from_ramyad/res
export SIM_RESULT_DIR=/home/rhadidi/res


###################### bash history multiple terminals####
# Disable for zsh
# Avoid duplicates
# don't put duplicate lines or lines starting with space in the history.
#export HISTCONTROL=ignoredups:erasedups  
# When the shell exits, append to the history file instead of overwriting it
#shopt -s histappend

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
#HISTSIZE=5000000
#HISTFILESIZE=1000000

# History Append
# Avoid duplicates
#export HISTCONTROL=ignoredups:erasedups  

# (ONLINE) After each command, append to the history file and reread it
#export PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# Ignore commands
#HISTIGNORE='rm *:/bin/rm *:cd:ls:cd -:rm -f:/bin/rm -f -r *:git pull:tmux:git push origin master:tmux at:tmux ls:cat *'

