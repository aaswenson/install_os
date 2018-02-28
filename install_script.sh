#!/bin/sh

# get zsh config from github

##git clone https://github.com/aaswenson/zsh_config .zsh_config
##cd .zsh_config
##./install.sh

##apt install zsh


##################### OTHER PROGRAMS #########################################

sudo apt-get install htop

### Slack
#sudo snap install slack --classic

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
sudo apt-get install python-pip python-dev build-essential 
sudo pip install --upgrade pip 
sudo pip install --upgrade virtualenv 

sudo apt-get install python3-pip python3-dev build-essential 

pip3 install --upgrade pip3

pip install numpy
pip install scipy

pip3 install numpy
pip3 install scipy

### For All Programs ###
sudo apt-get update
sudo apt-get upgrade

###################### REACTOR PHYSICS RSICC SOFTWARE #########################
##mkdir opt
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
sudo apt-get install -y build-essential python-numpy python-scipy cython python-nose git cmake vim emacs gfortran libblas-dev liblapack-dev libhdf5-dev gfortran python-tables python-matplotlib python-jinja2 autoconf libtool
export LD_LIBRARY_PATH=/usr/lib/x86_64-linux-gnu
mkdir/home/alex/opt/pyne
git clone https://github.com/aaswenson/pyne opt/pyne
cd /home/alex/opt/pyne
python3 setup.py install --user
