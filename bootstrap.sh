#!/usr/bin/env bash

if ! command -v brew >/dev/null;
then
  echo "Install homebrew and run this script again."
  exit 1
fi

echo "defaults write settings..."

defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.dashboard mcx-disabled -bool true
defaults write NSGlobalDomain AppleShowAllExtensions -bool true
defaults write com.apple.finder ShowPathbar -bool true
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder NewWindowTarget -string "PfHm"
defaults write com.apple.finder NewWindowTargetPath -string "file://${HOME}"
defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"
defaults write com.apple.finder QuitMenuItem -bool true
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock orientation -string "right"

osascript -e 'tell application "System Events" to tell dock preferences to set autohide menu bar to true'

killall Dock
killall Finder

echo "section ended."

echo "homebrew..."

brew tap FelixKratz/formulae
brew tap asmvik/formulae

brew install --HEAD neovim
brew install cava
brew install docker
brew install docker-compose
brew install colima
brew install eza
brew install python
brew install rustup
brew install gcc
brew install gemini-cli
brew install skhd
brew install sketchybar
brew install yabai
brew install stylua
brew install tree
brew install tree-sitter
brew install tree-sitter-cli
brew install hugo
brew install zellij
brew install borders

brew install --cask brave-browser
brew install --cask spotify
brew install --cask obsidian
brew install --cask font-iosevka-nerd-font
brew install --cask font-iosevka-term-nerd-font
brew install --cask kitty
brew install --cask mac-mouse-fix
brew install --cask raycast
brew install --cask selfcontrol
brew install --cask zed

# start colima
colima start

# set wallpaper
osascript -e "tell application \"System Events\" to set picture of every desktop to \"/Users/$(whoami)/dots/media/wallpaper.png\""

# neovim
mkdir -p ~/.config/nvim
ln -sf ~/dots/nvim/init.lua ~/.config/nvim/init.lua
ln -sf ~/dots/nvim/lua ~/.config/nvim/lua
ln -sf ~/dots/nvim/nvim-pack-lock.json ~/.config/nvim/nvim-pack-lock.json

# kitty
mkdir -p ~/.config/kitty
ln -sf ~/dots/kitty/kitty.conf ~/.config/kitty/kitty.conf

# yabai + skhd
ln -sf ~/dots/yabai/yabairc ~/.yabairc
ln -sf ~/dots/yabai/skhdrc ~/.skhdrc

# sketchybar
mkdir -p ~/.config/sketchybar
ln -sf ~/dots/sketchybar/sketchybarrc ~/.config/sketchybar/sketchybarrc
ln -sf ~/dots/sketchybar/plugins ~/.config/sketchybar/plugins

# zellij
mkdir -p ~/.config/zellij
ln -sf ~/dots/zellij/config.kdl ~/.config/zellij/config.kdl

# zed
mkdir -p ~/.config/zed
ln -sf ~/dots/zed/* ~/.config/zed/



echo "Installation ended."

echo "TODO"
echo "Don't forget to disable SIP https://github.com/asmvik/yabai/wiki/Disabling-System-Integrity-Protection"
echo "Don't forget to configure scripting addition https://github.com/asmvik/yabai/wiki/Installing-yabai-(latest-release)#configure-scripting-addition"
