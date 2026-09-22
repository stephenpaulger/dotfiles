# Check if main exists and use instead of master
function git_main_branch() {
  command git rev-parse --git-dir &>/dev/null || return
  local ref
  for ref in refs/{heads,remotes/{origin,upstream}}/{main,trunk,mainline,default,master}; do
    if command git show-ref -q --verify $ref; then
      echo ${ref:t}
      return 0
    fi
  done

  # If no main branch was found, fall back to master but return error
  echo master
  return 1
}

alias gc='git commit --verbose'
alias gca='git commit --all'

alias gcm='git switch $(git_main_branch)'
alias gl="git pull"
alias gp="git push"
alias gss="git status --short"

alias gsw='git switch'
alias gswc='git switch -c'
alias gswm='git switch $(git_main_branch)'

alias grbm='git rebase $(git_main_branch)'
alias grbim='git rebase -i $(git_main_branch)'
