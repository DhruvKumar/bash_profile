export MAVEN_OPTS="-Xms1024m -Xmx3076m -XX:MaxPermSize=512m"

alias prg="ssh -i ~/.ssh/secloud.pem root@pregion-shared01.cloud.hortonworks.com"

export JAVA_HOME=`/usr/libexec/java_home`
export AKKA_HOME=/Users/dkumar/code/akka-lib/akka_2.10-2.3.14

function title {
    echo -ne "\033]0;"$*"\007"
}

export HADOOP_HOME=/Users/dkumar/code/hdp-client/2.3-sandbox/2.3.0.0-2557/hadoop
export HADOOP_CONF_DIR=$HADOOP_HOME/conf
export SPARK_HOME=/Users/dkumar/code/hdp-client/2.3-sandbox/2.3.0.0-2557/spark
# export SPARK_HOME=/Users/dkumar/code/spark/spark-1.3.1-bin-hadoop2.6

export PATH=$PATH:$SPARK_HOME/bin

alias ll='ls -lhaG'

# refresh shell
alias reload='source ~/.bash_profile'

# up 'n' folders
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# simple ip
alias ip='ifconfig | grep "inet " | grep -v 127.0.0.1 | cut -d\ -f2'
# more details
alias ip1="ifconfig -a | perl -nle'/(\d+\.\d+\.\d+\.\d+)/ && print $1'"
# external ip
alias ip2="curl -s http://www.showmyip.com/simple/ | awk '{print $1}'"

# grep with color
alias grep='grep --color=auto'

PS1_OLD=${PS1}
export PS1='\[\033[1;34m\]\!\[\033[0m\] \[\033[1;35m\]\u\[\033[0m\]:\[\033[1;35m\]\W\[\033[0m\] \[\033[1;92m\]$\[\033[0m\]$ '

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/dkumar/code/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/dkumar/code/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/dkumar/code/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/dkumar/code/google-cloud-sdk/completion.bash.inc'
fi

# added by Anaconda3 4.3.0 installer
export PATH="/Users/dkumar/code/anaconda3/bin:$PATH"

# cuda stuff todo: don't hardcode cuda lib versions
export DYLD_LIBRARY_PATH=/Developer/NVIDIA/CUDA-8.0/lib${DYLD_LIBRARY_PATH:+:${DYLD_LIBRARY_PATH}}
export PATH=/Developer/NVIDIA/CUDA-8.0/bin${PATH:+:${PATH}}
export CUDNN_PATH=/Users/dkumar/code/cuDNN/cuda/lib/libcudnn.5.dylib

# activate Torch
. /Users/dkumar/torch/install/bin/torch-activate
