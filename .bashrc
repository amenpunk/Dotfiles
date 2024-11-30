#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd --color=auto'
# PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
set -o vi
export EDITOR=nvim
export CAPACITOR_ANDROID_STUDIO_PATH=/opt/android-studio/bin/studio.sh
export ANDROID_HOME=$HOME/android-sdk
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
# export DB_CONFIG='jdbc:postgresql://127.0.0.1:26257/workshop?sslmode=disable&user=root'
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
. "/home/ming/.deno/env"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ming/gcloud/google-cloud-sdk/path.bash.inc' ]; then . '/home/ming/gcloud/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ming/gcloud/google-cloud-sdk/completion.bash.inc' ]; then . '/home/ming/gcloud/google-cloud-sdk/completion.bash.inc'; fi
export PATH=$PATH:$ANDROID_HOME/platform-tools
