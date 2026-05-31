#!/bin/bash

read -p "Enter your username: " USERNAME

# Install Homebrew if it's not already installed
if ! command -v brew &> /dev/null; then
    echo "Installing Homebrew..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo "Adding Homebrew to your PATH..."

    # Check if the line already exists in .zprofile
    if ! grep -q 'eval "$(/opt/homebrew/bin/brew shellenv)"' /Users/$USERNAME/.zprofile; then
        echo >> /Users/$USERNAME/.zprofile
        echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/$USERNAME/.zprofile
    fi

    source /Users/$USERNAME/.zprofile
else
    echo "Homebrew is already installed."
fi

# Check if Homebrew is callable
if ! command -v brew &> /dev/null; then
    echo "Homebrew installation failed or is not callable."
    echo "Attempting to set up the environment."

    eval "$(/opt/homebrew/bin/brew shellenv)"

    # Checking again if Homebrew is callable
    if ! command -v brew &> /dev/null; then
        echo "Homebrew is still not callable. Please check the installation."
        exit 1
    fi
fi

# Disable Homebrew analytics
brew analytics off

# Install programs and fonts
echo "Installing programs and fonts..."
brew install btop bat neovim eza fish
brew install --cask kitty alt-tab nikitabobko/tap/aerospace raycast

echo "Moving specified directories to ~/.config/ & ~/Downloads/"
mkdir -p ~/.config
mv ~/dotfiles/aerospace ~/.config/
mv ~/dotfiles/nvim ~/.config/
mv ~/dotfiles/kitty ~/.config/
mv ~/dotfiles/fonts ~/.config
mv ~/dotfiles/wallpapers ~/Downloads/
cd

echo "Cleaning up..."
rm -rf ~/dotfiles

echo "Setting fish as default shell..."
FISH_PATH=/opt/homebrew/bin/fish
if ! grep -q "$FISH_PATH" /etc/shells; then
    echo "$FISH_PATH" | sudo tee -a /etc/shells
fi
chsh -s "$FISH_PATH" $USERNAME
echo "Fish set as default shell. Restart terminal to take effect."

echo "Setup complete!"
