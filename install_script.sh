#!/bin/sh

# get zsh config from github

git clone https://github.com/aaswenson/zsh_config /home/alex/.zsh_config
cd /home/alex/.zsh_config
./install.sh

apt install zsh
chsh -s /usr/bin/zsh
sudo apt-get install fonts-powerline

##################### CLONE RESEARCH WORK ####################################
cd /home/alex
mkdir research
cd /home/alex/research

git clone https://github.com/aaswenson/sCO2_reactor
git clone https://github.com/aaswenson/UWNR
git clone https://github.com/aaswenson/useful_research_scripts
git clone https://github.com/aaswenson/mcnp_parser
##################### OTHER PROGRAMS #########################################

sudo apt-get install htop vim-gtk

### Slack
sudo snap install slack --classic

### Spotify
snap install spotify

### Chrome
wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" >> /etc/apt/sources.list.d/google.list'
sudo apt-get update
sudo apt-get install google-chrome-stable

### System Load Indicator
sudo add-apt-repository ppa:indicator-multiload/stable-daily
sudo apt update
sudo apt install indicator-multiload

#### CMake
sudo apt-get install cmake

### Put Launcher on Bottom ###
gsettings set com.canonical.Unity.Launcher launcher-position Bottom

##################### PYTHON STUFF ###########################################
sudo apt-get install python-pip python-dev python3-pip python3-dev build-essential 
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv

pip3 install --upgrade pip3

pip install matplotlib numpy scipy
pip3 install matplotlib numpy scipy

### For All Programs ###
sudo apt-get update
sudo apt-get upgrade

###################### REACTOR PHYSICS RSICC SOFTWARE #########################
mkdir /home/alex/opt
##mkdir opt/rsicc

# copy mcnp tarball
##scp aaswenson@best-tux.cae.wisc.edu:/groupspace/cnerg/users/aaswenson/mcnp_data_execs.tar.gz /home/alex/opt/rsicc
# copy scale tarball
##scp aaswenson@best-tux.cae.wisc.edu:/groupspace/cnerg/users/aaswenson/scale_execs_data.tar.gz /home/alex/opt/rsicc

#cd opt/rsicc
#tar -xvzf mcnp_data_execs.tar.gz
#tar -xvzf scale_execs_data.tar.gz

echo "#MCNP DATA and EXECS" >> ~/.zshrc
echo "export PATH=/home/alex/opt/rsicc/MCNP/bin:\$PATH" >> ~/.zshrc
echo "export PATH=/home/alex/opt/rsicc/MCNP/MCNP_DATA:\$PATH" >> ~/.zshrc

echo "#SCALE DATA and EXECS" >> ~/.zshrc
echo "export PATH=/home/alex/opt/rsicc/SCALE/cmds:\$PATH" >> ~/.zshrc
    

###################### PYNE #####################
sudo apt-get install -y build-essential cython python-nose libhdf5-dev cmake emacs gfortran libblas-dev liblapack-dev gfortran python-tables python-jinja2 autoconf libtool
hdf5_libdir=/usr/lib/x86_64-linux-gnu/hdf5/serial
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
mkdir/home/alex/opt/pyne
git clone https://github.com/aaswenson/pyne /home/alex/opt/pyne
cd /home/alex/opt/pyne
python3 setup.py install --user
