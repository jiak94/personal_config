# Path to your oh-my-zsh installation.
  export ZSH=/home/jiakuan/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

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

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)
plugins=(zsh-autosuggestions)
# User configuration

# export PATH="/usr/bin:/bin:/usr/sbin:/sbin:$PATH"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/usr/local/android-studio/bin:$PATH"
export PATH="/usr/local/wechat:$PATH"
export PATH="/usr/local/eclipse:$PATH"
export C_INCLUDE_PATH="/usr/include/x86_64-linux-gnu"
export CPLUS_INCLUDE_PATH="/usr/include/x86_64-linux-gnu"
export PATH="/home/jiakuan/klee32/klee/Release+Asserts/bin:$PATH"
source $ZSH/oh-my-zsh.sh

#if [[ ! $TERM =~ screen ]]; then
#    exec tmux -2
#fi

if [ -z ${TMUX} ]; then
    tmux -2 attach || tmux -2 new -s jiakuan
fi

date_stamp=$(date "+%m/%d/%y/ %H:%M")
machine=$(echo $HOST | awk -F\. '{print $1}')
cowput="Welcome back, Jiakuan! You're on $machine. It's currently $date_stamp"
echo $cowput | cowsay
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
bindkey '^[ ' autosuggest-accept
# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias connect="expressvpn connect"
alias disconnect="expressvpn disconnect"
alias wechat="electronic-wechat&"
alias eclipse="eclipse &"
alias studio="./studio.h "
alias nike="ssh jiakuan@nike.cs.uga.edu"
alias gcc-arm="arm-linux-gnueabi-gcc"
alias LS="ls"
alias nongui="cd ~/qemu/bin && qemu-system-x86_64 -m 1024 -enable-kvm -drive if=virtio,file=test.qcow2,cache=none -cdrom ~/ISO/mini.iso -vnc :1 -redir tcp:2222::22"
alias tmux='tmux -2'
alias CD='cd'