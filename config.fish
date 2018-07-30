alias proj cd /Users/stujo04/projects/
alias l ls -lAh
alias ll ls -lTAh
alias gs git status
alias gl git pull
alias .rc source /Users/stujo04/.config/fish/config.fish
# bass source ~/.nvm/nvm.sh
# bass export PATH=/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin

# Customize
set -g theme_date_format +%H:%M:%S %a
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path no
set -g theme_title_display_process no
set -g theme_show_exit_status no
set -g theme_display_git_master_branch yes
set -g fish_prompt_pwd_dir_length 0
# set -g theme-display-vi no

set -g BULLETTRAIN_PROMPT_ORDER       time         dir           nodejs             git
set -g BULLETTRAIN_NODEJS_SHOW true

# Time segment
set -g BULLETTRAIN_TIME_BG 009900
set -g BULLETTRAIN_TIME_FG cacdd1

# Dir segment
set -g BULLETTRAIN_DIR_BG 76ff03
set -g BULLETTRAIN_DIR_FG 000000

# Nvm segment
set -g BULLETTRAIN_NODEJS_BG 32cb00
set -g BULLETTRAIN_NODEJS_FG 000000

# Git segment
set -g BULLETTRAIN_GIT_BG b0ff57
set -g BULLETTRAIN_GIT_FG 000000
