SETUP_DIR=`echo $0 | sed -r "s/(.*)install.sh.*/\1/"`

mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

cd ~/.vim/bundle
git clone git://github.com/altercation/vim-colors-solarized.git
mv vim-colors-solarized ~/.vim/bundle/

echo "Setting up bashrc"
cat ${SETUP_DIR}/append.bashrc >> ~/.bashrc
source ~/.bashc

echo "Setting up vimrc"
cat ${SETUP_DIR}/append.vimrc >> ~/.vimrc

echo "Setting up packages"
sudo apt-get update
sudo apt-get install --yes --force-yes g++ make libtbb-dev bc pv
