PS1=$'\[\033]\007\]\n\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\n$ ' 
#PS1=$'\[\033]0;$TITLEPREFIX:$PWD\007\]\n\[\033[33m\]\w\[\033[36m\]`__git_ps1`\[\033[0m\]\nÂ ' 

# Setting fd as the default source for fzf
export FZF_DEFAULT_COMMAND='fd --type f'
# fzf ctrl-r and alt-c behavior
export FZF_CTRL_T_COMMAND="fd --type f --hidden --follow . $HOME"
export FZF_ALT_C_COMMAND="fd --type d --follow . $HOME"
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

source $HOME/scoop/apps/anaconda3/current/etc/profile.d/conda.sh

alias dotfiles='git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
alias cursor='tput cnorm'
alias ll='ls -alh'
