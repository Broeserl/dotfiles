#!/bin/bash

DEST_DIR="/home/$USER/"

install_dev_tools() {
  echo "###################################################################"
  echo "Install development tools"
  apt -y install git g++ gcc cmake python3.8-dev valgrind grep
  echo "###################################################################"
}

install_std_tools() {
  echo "Install standard tools"
  apt -y install curl wget vim screen net-tools htop dos2unix
  echo "###################################################################"
}

install_ohmyzsh_plugins() {
  git clone https://github.com/romkatv/powerlevel10k.git ~/.oh-my-zsh/custom/themes/powerlevel10k
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
  sudo pip3 install thefuck

}

install_fonts() {
  wget https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Mononoki.zip
  unzip Mononoki.zip -d mononoki-fonts
  cp mononoki-fonts/*.ttf /usr/local/share/fonts
  rm -rf Mononoki.zip mononoki-fonts
}

install_ohmyzsh() {
  echo "Install zsh & oh_my_zsh"
  apt -y install zsh fzf python3-pip xclip 
  sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended
  chsh -s /usr/bin/zsh
  install_ohmyzsh_plugins
  install_fonts
  echo "###################################################################"
}

copy_config_files() {
  # copy config files to home dir of USER
  cp -a ./config-files/. $DEST_DIR 
}

add_custom_config_to_bashrc() {
  echo "source ~/.jo_config" >> ~/.bashrc
}

install_dev_tools
install_std_tools
install_ohmyzsh
copy_config_files
add_custom_config_to_bashrc
