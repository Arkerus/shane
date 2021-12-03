# ██████╗░░█████╗░███████╗██╗░░██╗██████╗░░██████╗
# ██╔══██╗██╔══██╗██╔════╝██║░░██║██╔══██╗██╔════╝
# ██████╔╝███████║███████╗███████║██████╔╝██║░░░░░
# ██╔══██╗██╔══██║╚════██║██╔══██║██╔══██╗██║░░░░░
# ██████╔╝██║░░██║███████║██║░░██║██║░░██║╚██████╗
# ╚═════╝░╚═╝░░╚═╝╚══════╝╚═╝░░╚═╝╚═╝░░╚═╝░╚═════╝

#░░░░░░░░░░░░░░░░░░░░░░░░░░░
#░░ ENVIRONMENT VARIABLES ░░
#░░░░░░░░░░░░░░░░░░░░░░░░░░░ 

# export PATH="$PATH:$HOME/.local/bin:$PATH"
export PATH="/home/arch/.local/bin:$PATH"

VISUAL=vim; 
export VISUAL 
EDITOR=vim; 
export EDITOR

#░░░░░░░░░░░░░
#░░ PROMPTS ░░
#░░░░░░░░░░░░░ 

if [ -n "$SSH_CONNECTION" ]; then
export PS1="\[$(tput setaf 1)\]┌─╼ [$(tput setaf 7)\] \u \[$(tput setaf 1)\]╺─╸\[$(tput setaf 7)\] \H \[$(tput setaf 7)\][\w]\n\[$(tput setaf 1)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 1)\]└────╼ \[$(tput setaf 7)\][ssh]\"; else echo \"\[$(tput setaf 1)\]└╼ \[$(tput setaf 7)\][ssh]\"; fi) \[$(tput setaf 7)\]"
else
export PS1="\[$(tput setaf 1)\]┌─╼\[$(tput setaf 3)\] \u\[$(tput setaf 1)\] ╺─╸\[$(tput setaf 1)\] \H \[$(tput setaf 7)\][\[$(tput setaf 5)\]\w\[$(tput setaf 7)\]]\n\[$(tput setaf 1)\]\$(if [[ \$? == 0 ]]; then echo \"\[$(tput setaf 1)\]└────╼\"; else echo \"\[$(tput setaf 1)\]└╼\"; fi) \[$(tput setaf 7)\]"
fi

#Call neofetch on open
neofetch

#█▓▒░ SSH
# You can add some ssh commands here eventually

#█▓▒░ Configs
alias vimconfig="vim ~/.vimrc"
alias bspwmconfig="vim ~/.config/bspwm/bspwmrc"
alias sxhkdconfig="vim ~/.config/sxhkd/sxhkdrc"
alias polybarconfig="vim ~/.config/polybar/config"
alias dunstconfig="vim ~/.config/dunst/dunstrc"
alias rangerconfig="vim ~/.config/ranger/rc.conf"
alias neofetchconfig="vim ~/.config/neofetch/config.conf"

note() {
  NOTES=~/Documents/notes/notes
  [ "$1" = "clear" ] && truncate -s 0 $NOTES && return
  [ "$1" = "ls" ] && cat $NOTES && return 
  echo "$1" >> $NOTES
}

#█▓▒░ Commands
alias ls='ls --color=auto'
alias pacman='pacman --color=auto'
alias yay='yay --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias diff='diff --color=auto'
alias gh='history | grep'
alias mv='mv -v'
alias rm='rm -v'
alias cp='cp -v'

#█▓▒░ Git
alias ga="git add"
alias gcl="git clone"
alias gcm="git commit -m"
alias gma='git commit -am'
alias gst="git status"
alias glg="git log"
alias gpsh="git push"
alias gpll="git pull"

alias gf='git reflog'
alias gta='git tag -a -m'
alias gdf='git diff'
alias gbr='git branch'
alias gch='git checkout'
alias gra='git remote add'
alias grr='git remote rm'

#█▓▒░ Fun scripts
alias snow="~/.scripts/./snow.sh"
alias pipes="~/.scripts/./pipes.sh -p 10"
alias pipesx="~/.scripts/./pipesX.sh"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
