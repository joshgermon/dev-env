# Use powerline
USE_POWERLINE="true"
# Source manjaro-zsh-configuration
if [[ -e /usr/share/zsh/manjaro-zsh-config ]]; then
  source /usr/share/zsh/manjaro-zsh-config
fi
# Use manjaro zsh prompt
if [[ -e /usr/share/zsh/manjaro-zsh-prompt ]]; then
  source /usr/share/zsh/manjaro-zsh-prompt
fi
#Starship prompt
eval "$(starship init zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

#Kitty Terminal Keybinds
bindkey "\e[1;3D" backward-word
bindkey "\e[1;3C" forward-word 

#aliases
#For switching DPIs
alias v='nvim'
alias vim='nvim'
alias 4kmode="xrdb -merge $HOME/.hidpi.Xresources"
alias 1080mode="xrdb -merge $HOME/.Xresources"

#add composer to path
export PATH=~/.config/composer/vendor/bin:$PATH

#add history
export HISTFILE=~/.zsh_history
export HISTSIZE=1000
export SAVEHIST=1000

#GO PATH
export PATH=${PATH}:`go env GOPATH`/bin

#z.sh
. /home/joshua/scripts/z.sh
