# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Node Version Manager
curl -o- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash

# Install Yarn
brew install yarn --without-node

# Install dependencies
brew install zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Set up SSH key
ssh-keygen -t rsa -b 4096 -C "angushtlam@gmail.com"
cat ~/.ssh/id_rsa.pub > ~/Desktop/id_rsa.pub

# Install useful apps
brew cask install 1password firefox google-chrome iterm2 spectacle sketch spotify visual-studio-code

# Install fonts
cp files/Source\ Code\ Pro\ for\ Powerline.otf ~/Library/Fonts/
# Copy .zsh setup
cp files/.zshrc ~/
# Set up Spectacle key bindings
cp -r files/Spectacle/Shortcuts.json ~/Library/Application\ Support/Spectacle/

# Set up Mac dock configs
defaults write com.apple.dock persistent-apps -array
defaults write com.apple.Dock showhidden -bool YES
defaults write -g AppleInterfaceStyle -string Dark
killall Dock

# Show hidden files
defaults write com.apple.finder AppleShowAllFiles -bool YES
killall Finder

# Set trackpad settings
defaults write com.apple.AppleMultitouchTrackpad Clicking -int 1
defaults write com.apple.AppleMultitouchTrackpad FirstClickThreshold -int 0
defaults write com.apple.AppleMultitouchTrackpad SecondClickThreshold -int 0
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -int 1
defaults write -g com.apple.trackpad.scaling -int 3
# There isn't a way to apply trackpad changes without restarting...

sudo reboot
