#!/bin/bash

#Index
# 1/ Installation avec prompts oui/non
# 2/ Shell

# 1/ Installation avec prompts oui/non
# ------------

# DVD support libdvd (impossible à automatiser)
sudo nala install -y regionset libavcodec-extra libdvd-pkg && sudo dpkg-reconfigure libdvd-pkg

# 2/ Shell
# ------------

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

# Plugins powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.powerlevel10k
echo 'source ~/.powerlevel10k/powerlevel10k.zsh-theme' >> ~/.zshrc
cp ./DATA/.p10k.zsh ~/

