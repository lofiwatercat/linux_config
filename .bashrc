alias c='clear'
alias cal='task calendar'
alias l='lsd -la'
alias v='nvim'
alias t='tmux'
alias vf='nvim $(fzf --preview="bat --color=always {}")'


alias ber='bundle exec rspec'
alias psqls='sudo service postgresql start'
alias psqle='sudo service postgresql stop'






export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
