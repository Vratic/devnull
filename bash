# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\[\033[36;1m\]\$(parse_git_branch)\[\033[00m\]\$ "
export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad


# CMD WINDOWS

Click / press Start
type env
Click Edit environment variables for your account
Edit / Add (User variables) a PROMPT variable

env var:
PRMOPT $E[1;30;40m[$E[0;36;40m%computername%$E[1;30;40m]$E[1;33;40m$p $E[1;30;40m$g $E[0;37;40m
