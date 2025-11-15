
[ -n "$PS1" ] && source ~/.bash_profile




export PATH="$PATH:$HOME/Projects/dotfiles/bin"

# Auto-activate finance venv when entering the project folder
cd() {
  builtin cd "$@"
  if [[ $PWD == ~/Projects/ai-finance-agent ]]; then
    source ~/Projects/ai-finance-agent/venv/bin/activate
  fi
}

alias venvfinance="source ~/Projects/ai-finance-agent/venv/bin/activate"


