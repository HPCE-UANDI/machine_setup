#!/bin/bash
SETUP_DIR=`echo $0 | sed -r "s/(.*)install_deetz.sh.*/\1/"`
DIR=$(pwd)/${SETUP_DIR}
echo $DIR

echo "Setting up packages"
sudo apt-get update
sudo apt-get install --yes --force-yes g++ make libtbb-dev bc pv

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

echo "Setting up zshrc"
sudo apt-get install zsh 
# need to do this manually for some reason
# sudo chsh ubuntu -s $(which-zsh)
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cat ${DIR}/deetz/append.zshrc > ~/.zshrc
source ~/.zshrc

echo "Setting up vimrc"
cat ${DIR}/deetz/append.vimrc > ~/.vimrc
