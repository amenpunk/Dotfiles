#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd --color=auto'
alias k='kubectl'

# Habilitar bash-completion si la shell no está en modo POSIX
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  elif [ -f /run/current-system/sw/share/bash-completion/bash_completion ]; then
    # Ruta estándar en NixOS
    . /run/current-system/sw/share/bash-completion/bash_completion
  elif type brew &>/dev/null && [ -r "$(brew --prefix)/etc/profile.d/bash_completion.sh" ]; then
    # Ruta en macOS con Homebrew (requiere Bash 4.2+)
    . "$(brew --prefix)/etc/profile.d/bash_completion.sh"
  fi
fi

complete -o default -F __start_kubectl k
# PS1='[\u@\h \W]\$ '
eval "$(starship init bash)"
set -o vi
export EDITOR=vim
export CAPACITOR_ANDROID_STUDIO_PATH=/opt/android-studio/bin/studio.sh
export DEFAULT_RECIPIENT="ondasycircuitos@gmail.com"
export JAVA_HOME="/usr/lib/jvm/java-21-openjdk"
export GCLOUD_CLIENTID=$(pass show cloud.google.com/client_id)
export GCLOUD_SECRET=$(pass show cloud.google.com/client_secret)
export PATH="$HOME/flutter/bin:$PATH"

alias rel="xrdb merge ~/.Xresources && kill -USR1 $(pidof st)"
#. "/home/ming/.deno/env"
export PATH=$JAVA_HOME/bin:$PATH
export PATH=~/bin:$PATH

export DB_URL=$(pass show supabase/pagos/db/host)
export DB_USER=$(pass show supabase/pagos/db/user)
export DB_PASSWORD=$(pass show supabase/pagos/db)

export GCLOUD_CLIENTID=$(pass show cloud.google.com/client_id)
export GCLOUD_SECRET=$(pass show cloud.google.com/client_secret)

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/ming/gcloud/google-cloud-sdk/path.bash.inc' ]; then . '/home/ming/gcloud/google-cloud-sdk/path.bash.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/ming/gcloud/google-cloud-sdk/completion.bash.inc' ]; then . '/home/ming/gcloud/google-cloud-sdk/completion.bash.inc'; fi

if [ -f ~/.config/exercism/exercism_completion.bash ]; then
  source ~/.config/exercism/exercism_completion.bash
fi
export PATH="$HOME/.npm-global/bin:$PATH"

# opencode
export PATH=/home/ecc/.opencode/bin:$PATH
# export JAVA_HOME=/usr/lib/jvm/java-17-openjdk
export PATH="$PATH:$HOME/flutter/bin"
# Added by Antigravity CLI installer
export PATH="/home/ecc/.local/bin:$PATH"

export ANDROID_HOME="$HOME/android-sdk"
export PATH="$HOME/flutter/bin:$ANDROID_HOME/platform-tools:$ANDROID_HOME/cmdline-
  tools/latest/bin:$PATH"

# Usar Brave Browser para Flutter Web
export CHROME_EXECUTABLE="/usr/bin/brave"
