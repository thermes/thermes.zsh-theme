#! /bin/zsh

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=""
ZSH_THEME_GIT_PROMPT_CLEAN=""

ZSH_THEME_GIT_PROMPT_ADDED="%{$fg[green]%}+"
ZSH_THEME_GIT_PROMPT_MODIFIED="%{$fg[magenta]%}!"
ZSH_THEME_GIT_PROMPT_DELETED="%{$fg[red]%}-"
ZSH_THEME_GIT_PROMPT_RENAMED="%{$fg[blue]%}>"
ZSH_THEME_GIT_PROMPT_UNMERGED="%{$fg[cyan]%}#"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[yellow]%}?"

local _user='%{$fg[blue]%}%n%{$reset_color%}'
local _hostname='%{$fg[green]%}%m%{$reset_color%}'
local _cwd='%{$fg[yellow]%}%~%{$reset_color%}'
local _symbol='%(?..%{$fg[red]%})%(!.#.$)%{$reset_color%}'

local _return_status='%(?..%{$fg[red]%}%S%?%s%{$reset_color%})'
local _jobs_no='%(1j.%{$fg[yellow]%}%%%j%{$reset_color%}.)'
local _git_prompt='$(git_prompt_status) $(git_prompt_info)'
local _hist_no='%{$fg[cyan]%}!%h%{$reset_color%}'
local _time='%{$fg[green]%}[%*]%{$reset_color%}'

PROMPT="${_user}@${_hostname}:${_cwd}
${_symbol} "

RPROMPT="${_return_status} ${_jobs_no} ${_git_prompt} ${_hist_no} ${_time}"
