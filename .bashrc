#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd --color=auto'
# PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
set -o vi
export EDITOR=vim
export CAPACITOR_ANDROID_STUDIO_PATH=/opt/android-studio/bin/studio.sh
export ANDROID_HOME=$HOME/android-sdk
export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export DEFAULT_RECIPIENT="ondasycircuitos@gmail.com"
alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
#. "/home/ming/.deno/env"
export PATH=$PATH:$ANDROID_HOME/platform-tools
export PATH=~/bin:$PATH

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ming/gcloud/google-cloud-sdk/path.bash.inc' ]; then . '/home/ming/gcloud/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ming/gcloud/google-cloud-sdk/completion.bash.inc' ]; then . '/home/ming/gcloud/google-cloud-sdk/completion.bash.inc'; fi

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  source ~/.config/exercism/exercism_completion.bash
fi
