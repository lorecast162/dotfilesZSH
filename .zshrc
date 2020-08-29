export EDITOR=nvim
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
CASE_SENSITIVE="true"
plugins=(git command-not-found zsh-syntax-highlighting zsh-autosuggestions)
source $ZSH/oh-my-zsh.sh
export PATH=$PATH:$HOME/.gem/ruby/2.7.0/bin:/opt/nxdk-jfr/usr/bin
export NXDK_DIR=/opt/nxdk-jfr
[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh
if [[ -d $HOME/.local/share/fortunes ]]; then
	myfile=$( find "$HOME/.local/share/fortunes/" -type l,f -print0 | shuf -z -n 1 )
	cat $myfile
fi
alias vim=nvim

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="/home/lorecast162/.sdkman"
[[ -s "/home/lorecast162/.sdkman/bin/sdkman-init.sh" ]] && source "/home/lorecast162/.sdkman/bin/sdkman-init.sh"
export VITASDK=/usr/local/vitasdk
export PATH=$VITASDK/bin:$PATH
[[ -f $HOME/.config/plasma-workspace/env/doomWads.sh ]] && source $HOME/.config/plasma-workspace/env/doomWads.sh
