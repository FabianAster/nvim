#!/bin/bash

sudo apt update

echo test
# npm + nodejs
echo npm Installieren
sudo apt install npm

# Node Installieren
echo node js Installieren
sudo npm install n -g
sudo n stable


echo Nvim Installieren
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim


echo clangd install
sudo apt install clangd

sudo update-alternatives --install $(which vim) vim $(which nvim) 10
sudo update-alternatives --config vim