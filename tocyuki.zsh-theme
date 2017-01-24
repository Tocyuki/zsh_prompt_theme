function str_with_color() {
  echo "%{$fg[$1]%}$2%{$reset_color%}"
}

ZSH_THEME_GIT_PROMPT_ADDED=$(str_with_color cyan '+')
ZSH_THEME_GIT_PROMPT_MODIFIED=$(str_with_color yellow '*')
ZSH_THEME_GIT_PROMPT_DELETED=$(str_with_color red 'x')
ZSH_THEME_GIT_PROMPT_RENAMED=$(str_with_color blue 'o')
ZSH_THEME_GIT_PROMPT_UNMERGED=$(str_with_color magenta '!')
ZSH_THEME_GIT_PROMPT_UNTRACKED=$(str_with_color white '?')

function my_git_status() {
  [ $(current_branch) ] && echo "($(current_branch)$(git_prompt_status))"
}

DATE_TIME=$(str_with_color white '%D{%m-%d %K:%M:%S}')
PROMPT_PREFIX=$(str_with_color white '#')
USER_NAME=$(str_with_color cyan '%n')
HOST_NAME=$(str_with_color yellow '%m')
CURRENT_DIRECTORY=$(str_with_color green '%~')
PROMPT_CHAR=$(str_with_color red '➜ ')
PROMPT='${PROMPT_PREFIX} ${USER_NAME} at ${HOST_NAME} in ${CURRENT_DIRECTORY} $(my_git_status) [$
{DATE_TIME}]
$PROMPT_CHAR'
PROMPT2=$(str_with_color white '> ')
