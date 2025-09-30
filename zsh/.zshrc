
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/sebastian/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/sebastian/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/sebastian/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/sebastian/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

export PS1="[%1~] \$ "

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

export DYLD_LIBRARY_PATH="$(brew --prefix)/lib:$DYLD_LIBRARY_PATH"

export DISPLAY='0'

alias tma="tmux attach -t $1"
alias sd="cd \$(find * -type d | fzf)"

# alias vim="nvim"

alias vim="NVIM_APPNAME=LazyVim nvim $1"

export SSH_AUTH_SOCK=/Users/sebastian/Library/Containers/com.bitwarden.desktop/Data/.bitwarden-ssh-agent.sock

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
