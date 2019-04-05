local ret_status="%(?:%{$fg_bold[green]%}➜ :%{$fg_bold[red]%}➜ )"
PROMPT='${ret_status} %{$fg[cyan]%}%c%{$reset_color%} $(git_prompt_info)'



 ZSH_THEME_GIT_PROMPT_PREFIX="git:(";
 ZSH_THEME_GIT_PROMPT_SUFFIX=")%{$reset_color%} ";


 ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}";
 ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%}";

ZSH_THEME_GIT_PROMPT_REMOTE_EXISTS_COLOUR="%{$fg[green]%}";
ZSH_THEME_GIT_PROMPT_REMOTE_MISSING_COLOUR="%{$fg[yellow]%}";
ZSH_THEME_GIT_PROMPT_DIVERGED_COLOUR="%{$fg[magenta]%}";
ZSH_THEME_GIT_PROMPT_AHEAD_COLOUR="%{$fg[cyan]%}";
ZSH_THEME_GIT_PROMPT_BEHIND_COLOUR="%{$fg[red]%}";


#   30 black                  40 bg-black
#  31 red                    41 bg-red
#  32 green                  42 bg-green
#  33 yellow                 43 bg-yellow
#  34 blue                   44 bg-blue
#  35 magenta                45 bg-magenta
#  36 cyan                   46 bg-cyan
#  37 white 


