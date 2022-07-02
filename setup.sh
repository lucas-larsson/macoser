
# A script to help me setup future Macs
# Install the script on a usb and run it.

echo -e "Hello and welcome to macoser\n"
echo -e "In the begining we will need your sudo password, so please be ready to help us here in the begining.\n"

# Needed to run the script
echo -e "Running xcode, be ready for a popup.\n"
xcode-select --install

# Install Oh My Zsh
echo -e "Installing oh my zsh\n"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo -e "Installing homebrew\n"


# Install brew
arch -x86_64 /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"




echo -e "All sudo required stuff should be over\n"




# Creating aliases I use
echo -e "Creating aliases\n"

echo "#aliases" >>~/.zshrc
echo "alias kth=\"cd ~/Documents/KTH/\"" >>~/.zshrc
echo "alias Projects=\"cd ~/Documents/Projects\"" >>~/.zshrc
echo "alias Documents=\"cd ~/Documents\"" >>~/.zshrc
echo "alias Downloads=\"cd ~/Downloads\"" >>~/.zshrc
echo "alias brews=\"brew update; brew upgrade; brew cleanup; brew autoremove; brew doctor\"" >>~/.zshrc

# I believe none of these should require sudo
echo -e "Installing brew casks\n"
CASKS=(
    adobe-creative-cloud
    bitwarden
    discord
    firefox
    fliqlo
    iterm2
    jetbrains-toolbox
    libreoffice
    libreoffice-language-pack
    nextcloud
    notion
    qbittorrent
    rectangle
    spotify
    visual-studio-code
)

arch -x86_64 brew cask install ${CASKS[@]}

# Installing brew formulae
echo -e "Installing brew formulae\n"
FORMULAE=(
  chruby            # Not sure if this works on m1 
  elixir
  go
  htop              
  neofetch          # Not sure if this works on m1
  node              
  rbenv             
  rust               
  speedtest-cli     # Not sure if this works on m1
  verilator        
  wifi-password     # Not sure if this works on m1
)

arch -x86_64 brew install ${FORMULAE[@]}

# Installing a better ruby, I have had problems with gem on every Mac I've used
echo -e "Changing ruby, to make gem work.\n"
rbenv install 3.1.2
rbenv global 3.1.2
gem update --system

# Installing powerlevel 10k, for a nice terminal
echo -e "Installing powerlevel10k\n"
arch -x86_64 brew install romkatv/powerlevel10k/powerlevel10k
echo "source $(brew --prefix)/opt/powerlevel10k/powerlevel10k.zsh-theme" >>~/.zshrc


echo -e "\n\nDone with the installation, we hope you enjoyed the process\n"
echo -e "Goodbye\n"
exit 1
