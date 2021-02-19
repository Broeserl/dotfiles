#!/bin/bash

DEST_DIR="/home/$USER/"

install_dev_tools() {
  echo "###################################################################"
  echo "\nInstall development tools\n"
  sudo apt -y install git g++ gcc cmake python3.8-dev valgrind grep
  echo "###################################################################"
}

install_std_tools() {
  echo "\nInstall standard tools\n"
  sudo apt -y install curl wget vim screen net-tools htop dos2unix
  echo "###################################################################"
}

install_useful_tools() {
  echo "\Install useful tools\n"
  sudo apt -y install diodon filezilla flameshot gparted neofetch ser2net rclone virtualbox virtualbox-ext-pack virtualbox-dkms
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
copy_config_files
add_custom_config_to_bashrc
