VISUAL="vim"

#setxkbmap -option 'grp:alt_shift_toggle'
#setxkbmap -option 'grp:alt_shift_toggle'
#exec --no-startup-id setxkbmap us,latam -option 'grp:alt_shift_toggle'
#setxkbmap -option grp:alt_shift_toggle us,latam
set -o vi
#eval "$(starship init bash)"
#PATH="$PATH:$(ruby -e '/home/cyberpunk/.gem/ruby/2.6.0')/bin"
export PATH="/home/cyberpunk/.gem/ruby/2.6.0/bin:$PATH"

#Path to your oh-my-bash installation.
#export FZF_DEFAULT_COMMAND="ag --nocolor --ignore node_modules -g"
export FZF_DEFAULT_COMMAND=""
export OSH=/home/cyberpunk/.oh-my-bash
export GOOGLE_APPLICATION_CREDENTIALS=~/KeyTest.json
export GOROOT=/usr/lib/go/src/
export DOTNET_CLI_TELEMETRY_OPTOUT=1
export DOTNET_ROOT=/opt/dotnet/
#"~/.cache/wal/colors.sh"
#(cat ~/.cache/wal/sequences &)
#powerline

### --------- Config for powerline-bash
alias teclado="setxkbmap -layout us,latam"
alias musiclib="updatedb -l 0 -U $HOME/Music -o music.db"
alias mipc="ssh -i ~/key amenpunk@"
alias muxt="powerline-config tmux setup"
alias music="ncmpcpp"
alias m="mocp"
alias p="python3"
alias emular="firebase emulators:start --only functions"
#
#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi
#
### -- end of powerline-bash


# powerline-daemon -q
# POWERLINE_BASH_CONTINUATION=1
# POWERLINE_BASH_SELECT=1
# . /usr/lib/python3.7/site-packages/powerline/bindings/bash/powerline.sh
# 
#source "$HOME/.cache/wal/colors.sh"
#cat /home/cyberpunk/.cache/wal/sequences

#function _update_ps1() {
#    PS1=$(powerline-shell $?)
#}
#
#if [[ $TERM != linux && ! $PROMPT_COMMAND =~ _update_ps1 ]]; then
#    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
#fi


#(wal -r &)
# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-bash is loaded.
#OSH_THEME="demula"
#OSH_THEME="zork"
#OSH_THEME="brunton"
#OSH_THEME="mairan"
OSH_THEME="powerline"
#OSH_THEME="powerline-naked"
#OSH_THEME="powerline-plain"
#OSH_THEME="powerline-multiline"
#OSH_THEME="random"
#OSH_THEME="iterate"
#OSH_THEME="binaryanomaly"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_OSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $OSH/custom?
# OSH_CUSTOM=/path/to/new-custom-folder

# Which completions would you like to load? (completions can be found in ~/.oh-my-bash/completions/*)
# Custom completions may be added to ~/.oh-my-bash/custom/completions/
# Example format: completions=(ssh git bundler gem pip pip3)
# Add wisely, as too many completions slow down shell startup.
completions=(
  git
  composer
  ssh
)
#
# Which aliases would you like to load? (aliases can be found in ~/.oh-my-bash/aliases/*)
# Custom aliases may be added to ~/.oh-my-bash/custom/aliases/
# Example format: aliases=(vagrant composer git-avh)
# Add wisely, as too many aliases slow down shell startup.
#aliases=(
#  general
#)

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-bash/plugins/*)
# Custom plugins may be added to ~/.oh-my-bash/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(
#  git
#  bashmarks
#)

source $OSH/oh-my-bash.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-bash libs,
# plugins, and themes. Aliases can be placed here, though oh-my-bash
# users are encouraged to define aliases within the OSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias bashconfig="mate ~/.bashrc"
# alias ohmybash="mate ~/.oh-my-bash"
#POWER LINE TMUX
#(powerline-config tmux setup &)

#PATH="/home/cyberpunk/perl5/bin${PATH:+:${PATH}}"; export PATH;
#PERL5LIB="/home/cyberpunk/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
#PERL_LOCAL_LIB_ROOT="/home/cyberpunk/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
#PERL_MB_OPT="--install_base \"/home/cyberpunk/perl5\""; export PERL_MB_OPT;
#PERL_MM_OPT="INSTALL_BASE=/home/cyberpunk/perl5"; export PERL_MM_OPT;

PATH="$PATH:/home/cyberpunk/.dotnet/tools";


#[ -f ~/.fzf.bash ] && source ~/.fzf.bash
