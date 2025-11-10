[ -n "$PS1" ] && source ~/.bash_profile


# Show user@host:path (git-branch)
PS1='\[\e[1;32m\]\u\[\e[0m\]@\[\e[1;31m\]\h\[\e[0m\]:\[\e[1;34m\]\w\[\e[0m\] \[\e[33m\]$(__git_ps1 "(%s)")\[\e[0m\]\$ '
