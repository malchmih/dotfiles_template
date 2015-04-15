set -g -x PATH $PATH /usr/local/bin
set -x PATH /home/mma/.linuxbrew/bin $PATH

# Path to your oh-my-fish.
set fish_path $HOME/.oh-my-fish

# Add alias for hub
eval (hub alias -s)

# Theme
# set fish_theme robbyrussell
# set fish_theme agnoster
# set fish_theme beloglazov
set fish_theme l
# set fish_theme ocean
# set fish_theme syl20bnr

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-fish/plugins/*)
# Custom plugins may be added to ~/.oh-my-fish/custom/plugins/
# Example format: set fish_plugins autojump bundler
set fish_plugins autojump brew emoji-clock localhost vi-mode gi

# Path to your custom folder (default path is $FISH/custom)
#set fish_custom $HOME/dotfiles/oh-my-fish

# Load oh-my-fish configuration.
. $fish_path/oh-my-fish.fish
