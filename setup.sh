brew install fish
echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
chsh -s "/usr/local/bin/fish"
fish
cd ~/.config/fish
echo "
alias proj "cd ~/projects/$1"
alias l "ls -lAh"
alias ll "ls -lTAh"
alias gs "git status"
alias gl "git pull"
alias .rc "source ~/.config/fish/config.fish"
# bass source ~/.nvm/nvm.sh
# bass export PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/sbin:/usr/bin"

# Customize
set -g theme_date_format "+%H:%M:%S %a"
set -g theme_title_display_user no
set -g theme_title_use_abbreviated_path no
set -g theme_title_display_process no
set -g theme_show_exit_status no
set -g theme_display_git_master_branch yes
set -g fish_prompt_pwd_dir_length 0
# set -g theme-display-vi no
set -g BULLETTRAIN_PROMPT_ORDER \
      time \
        dir \
          nodejs \
            git
set -g BULLETTRAIN_NODEJS_SHOW true

# Time segment
set -g BULLETTRAIN_TIME_BG 26323c
set -g BULLETTRAIN_TIME_FG cacdd1

# Dir segment
set -g BULLETTRAIN_DIR_BG 4f5b66
set -g BULLETTRAIN_DIR_FG dbdee0

# Nvm segment
set -g BULLETTRAIN_NODEJS_BG 7b8894
set -g BULLETTRAIN_NODEJS_FG 000000

# Git segment
set -g BULLETTRAIN_GIT_BG c3d9ee
set -g BULLETTRAIN_GIT_FG 000000

# Time Accent Color
# set -g BULLETTRAIN_TIME_BG bb002f
# set -g BULLETTRAIN_TIME_FG cacdd1

# Dir Accent Color
# set -g BULLETTRAIN_DIR_BG f50057
# set -g BULLETTRAIN_DIR_FG cacdd1

# Nvm accent color
# set -g BULLETTRAIN_NODEJS_BG ff5983
# set -g BULLETTRAIN_NODEJS_FG 000000

# Git Accent Color
# set -g BULLETTRAIN_GIT_BG ff8db2
# set -g BULLETTRAIN_GIT_FG 000000">> config.fish
source ~/.config/fish/config.fish
curl -L https://get.oh-my.fish | fish
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher
fisher edc/bass
cd ~/projects
git clone https://github.com/powerline/fonts powerline-fonts
cd powerline-fonts
./install.sh
# omf install bobthefish
omf install https://github.com/kobanyan/bullet-train-fish-theme
omf theme bullet-train-fish-theme
fisher nvm
cd ~/.config/fish/functions
echo "
function proj
  set args $argv
    if test -n "$args"
            set projArgs ~/projects/$args
                printf "projArgs: %s\n" $projArgs
                    cd $projArgs
                      else
                              cd ~/projects
                                end
                            end
" >> proj.fish
