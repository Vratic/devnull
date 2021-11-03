code () { VSCODE_CWD="$PWD" open -n -b "com.microsoft.VSCode" --args $* ;}

# Find and set branch name var if in git repository.
function git_branch_name()
{
  branch=$(git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/')
  if [[ $branch == "" ]];
  then
    :
  else
    echo ''$branch''
  fi
}

PS1='%{$fg[yellow]%}%~%{$reset_color%}%{$fg[cyan]%}$(git_branch_name)%{$reset_color%} $ '
