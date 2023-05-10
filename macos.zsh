#!/usr/bin/env zsh

echo "\n<<< Starting macOS Setup >>>\n"

osascript -e 'tell application "System Preferences" to quit'

# Finder > View > Show Path Bar
defaults write com.apple.finder ShowPathbar -bool true

# Finder > Preferences > General > New Finder windows show:
defaults write com.apple.finder NewWindowTarget -string 'PfLo'
defaults write com.apple.finder NewWindowTargetPath -string "file://$HOME/.dotfiles"

# System Preferences > Dock
defaults write com.apple.dock magnification -bool true
defaults write com.apple.dock tilesize -int 45
defaults write com.apple.dock largesize -int 60
defaults write com.apple.dock autohide -bool true
defaults write com.apple.dock autohide-time-modifier -float 0.25
defaults write com.apple.dock autohide-delay -float 0.1

# System Preferences > Accessibility > Pointer Control > Mouse & Trackpad > Trackpad Options > Enable Dragging > Three Finger Drag (NOTE: The GUI doesn't update)
defaults write com.apple.AppleMultitouchTrackpad TrackpadThreeFingerDrag -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerSwipeGesture -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerDrag -bool true

# System Preferences > Keyboard > Speed
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)

# System Preferences > Lock Screen > Turn Display of on Power Adapter when Inactive
sudo systemsetup -setcomputersleep 10

# System Preferences > Lock Screen > Turn Display of on Battery when Inactive
# Need to find out

# Hide apps from dock
defaults write com.apple.dock show-recents -bool no
dockutil --remove 'Safari' --allhomes
dockutil --remove 'Messages' --allhomes
dockutil --remove 'Mail' --allhomes
dockutil --remove 'Maps' --allhomes
dockutil --remove 'Photos' --allhomes
dockutil --remove 'FaceTime' --allhomes
dockutil --remove 'Calendar' --allhomes
dockutil --remove 'Contacts' --allhomes
dockutil --remove 'Notes' --allhomes
dockutil --remove 'TV' --allhomes
dockutil --remove 'Numbers' --allhomes
dockutil --remove 'Music' --allhomes
dockutil --remove 'Podcasts' --allhomes
dockutil --remove 'News' --allhomes
dockutil --remove 'Keynote' --allhomes
dockutil --remove 'Pages' --allhomes
dockutil --add /Applications/iTerm.app --allhomes
dockutil --add /Applications/'Visual Studio Code'.app --allhomes
dockutil --add /Applications/'Google Chrome'.app --allhomes

# Third-Party Software

# iTerm2 Settings
defaults write com.googlecode.iterm2 LoadPrefsFromCustomFolder -bool true
defaults write com.googlecode.iterm2 PrefsCustomFolder -string "$HOME/.config/iterm2"
defaults write com.googlecode.iterm2 NoSyncNeverRemindPrefsChangesLostForFile -bool true


# Finish macOS Setup
killall Finder
killall Dock
echo "\n<<< macOS Setup Complete.
    A logout or restart might be necessary. >>>\n"
