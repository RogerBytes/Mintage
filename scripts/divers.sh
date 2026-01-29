#!/bin/bash

#Index
# 1/ Installation avec prompts oui/non
# 2/ Shell

# 1/ Installation avec prompts oui/non
# ------------

# Req (à installer en premier)
FILE=~/.local/share/req.installed
[ -f "$FILE" ] || { 
  sudo apt install -y nala expect curl wget git
  touch ~/.local/share/req.installed
}

# JackD2
PKG=jackd2
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# DVD support libdvd (impossible à automatiser)
PKG=libdvd-pkg
dpkg -s "$PKG" &>/dev/null || sudo nala install -y regionset libavcodec-extra libdvd-pkg && sudo dpkg-reconfigure libdvd-pkg

# Jackd2 (pour ardour et audacity)
PKG=jackd2
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Steam
PKG=steam
dpkg -s "$PKG" &>/dev/null || sudo nala install -y "$PKG"

# Installer police FiraCode Nerd et firacode
FILE=~/.local/share/firafonts.installed
[ -f "$FILE" ] || { 
  sudo nala install -y fonts-firacode
  tmpdir=$(mktemp -d)
  wget -q -O "$tmpdir/FiraCode.zip" "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.4.0/FiraCode.zip"
  unzip -q "$tmpdir/FiraCode.zip" -d "$tmpdir"
  mkdir -p ~/.local/share/fonts
  cp "$tmpdir"/*.ttf ~/.local/share/fonts/
  fc-cache -f
  rm -rf "$tmpdir"
  touch ~/.local/share/firafonts.installed
}

# 2/ Shell
# ------------

FILE=~/.local/share/shell-ext.installed
[ -f "$FILE" ] || { 
  # Installer zsh
  sudo nala install -y zsh
  sudo chsh -s /bin/zsh

  # Plugins Autojump
  sudo nala install -y autojump
  echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc && source ~/.zshrc

  # Plugins zsh-syntax-highlighting
  sudo nala install -y zsh-syntax-highlighting
  echo "source /usr/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ~/.zshrc

  # Plugins zsh-autosuggestions
  sudo nala install -y zsh-autosuggestions
  echo "source /usr/share/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc

  # installer starship https://starship.rs
  STARSHIP_CONFIG=~/.config/starship.toml sh -c "$(curl -fsSL https://starship.rs/install.sh)" -- -y
  echo 'eval "$(starship init zsh)"' >> ~/.zshrc
  touch ~/.local/share/shell-ext.installed
}



