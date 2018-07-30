# install homebrew if needed
command -v brew >/dev/null 2>&1 || { echo >&2 "Installing Homebrew Now"; \
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"; }

# config
if brew ls --versions fish > /dev/null; then
  mkdir -p ~/.config/fish
  cp -rf config.fish ~/.config/fish
  brew install fish
  echo "/usr/local/bin/fish" | sudo tee -a /etc/shells
  chsh -s "/usr/local/bin/fish"
  fish
  cd ~/.config/fish
  source ~/.config/fish/config.fish
fi

# oh-my-fish
curl -L https://get.oh-my.fish | fish

# fisher
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# bass
fisher edc/bass

# powerline fonts
cd ~/projects
git clone https://github.com/powerline/fonts powerline-fonts
cd powerline-fonts
./install.sh

# themes
omf install https://github.com/kobanyan/bullet-train-fish-theme
omf theme bullet-train-fish-theme

# nvm
fisher nvm

# functions
mkdir -p ~/.config/fish/functions
cd ~/projects/fish
cp -rf proj.fish ~/.config/fish/functions
