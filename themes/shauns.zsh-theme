local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} $(battery_prompt_colour)%c%{$reset_color%} $(git_prompt_info)'

ZSH_THEME_GIT_PROMPT_PREFIX="git:("
ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} "

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}"

ZSH_THEME_GIT_PROMPT_REMOTE_EXISTS_COLOUR="%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_REMOTE_MISSING_COLOUR="%{$fg[yellow]%}"
ZSH_THEME_GIT_PROMPT_DIVERGED_COLOUR="%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_AHEAD_COLOUR="%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_BEHIND_COLOUR="%{$fg[red]%}"

ZSH_THEME_BATTERY_COLOUR_90_to_100="%{$fg[green]%}"
ZSH_THEME_BATTERY_COLOUR_70_to_90="%{$fg[blue]%}"
ZSH_THEME_BATTERY_COLOUR_50_to_70="%{$fg[cyan]%}"
ZSH_THEME_BATTERY_COLOUR_30_to_50="%{$fg[magenta]%}"
ZSH_THEME_BATTERY_COLOUR_10_to_30="%{$fg[yellow]%}"
ZSH_THEME_BATTERY_COLOUR_00_to_10="%{$fg[red]%}"