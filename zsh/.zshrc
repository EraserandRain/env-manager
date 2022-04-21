## export
	## zsh
export ZSH="/home/eraserrain/.oh-my-zsh"
	## nvm
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion


## theme and plugins
ZSH_THEME="lambda"
plugins=(
    git
    zsh-autosuggestions)

## alias
alias clr="clear"
alias gac="git add . && git commit"
alias gst="git status"

## PATH
    ## add path dir in path_arr 
path_arr=(
    ~/.local/bin
    ~/.config/yarn/global/node_modules/.bin
    ~/.yarn/bin
)
path_arr_sum=${#path_arr[*]}
for (( i=0;i<$path_arr_sum;i++ ))
do
    export PATH=$PATH:${path_arr[i]}
done

## reload
source $ZSH/oh-my-zsh.sh
