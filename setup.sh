
#A script to help me setup future Macs
#Install the script on a usb and run it.

echo -e "Hello and welcome to macoser\n"
echo -e "In the begining we will need your sudo password, so please be ready to help us here in the begining.\n"

#Needed to run the script
xcode-select --install

#Install Oh My Zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

#Install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo -e "All sudo required stuff should be over\n"

echo -e "Creating aliases\n"

echo "#aliases" >>~/.zshrc
echo "alias kth=\"cd ~/Documents/KTH/\"" >>~/.zshrc
echo "alias Projects=\"cd ~/Documents/projects\"" >>~/.zshrc
echo "alias Documents=\"cd ~/Documents\"" >>~/.zshrc
echo "alias Downloads=\"cd ~/Downloads\"" >>~/.zshrc
echo "alias brews=\"brew update; brew upgrade; brew cleanup; brew autoremove; brew doctor\"" >>~/.zshrc


echo -e "Installing brew casks\n"

#Install brew casks, I believe none of these should require sudo
brew install adobe-creative-cloud bitwarden discord firefox fliqlo iterm2 jetbrains-toolbox libreoffice libreoffice-language-pack nextcloud notion qbittorrent rectangle spotify visual-studio-code

echo -e "Installing brew formulae\n"
brew install elixir htop neofetch node speedtest-cli wifi-password 


echo -e "Installing powerlevel10k\n"
brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc
