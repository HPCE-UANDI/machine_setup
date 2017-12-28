SETUP_DIR=`echo $0 | sed -r "s/(.*)install.sh.*/\1/"`

echo "Setting up bashrc"
cat ${SETUP_DIR}/append.bashrc >> ~/.bashrc
source ~/.bashc

echo "Setting up vimrc"
cat ${SETUP_DIR}/append.vimrc >> ~/.vimrc

echo "Setting up packages"
sudo apt-get update
sudo apt-get install --yes --force-yes g++ make libtbb-dev bc pv
