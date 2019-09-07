#!/bin/bash
#
# Script to install linux system tools and basic python components.
#
GREEN='\033[1;32m'
NC='\033[0m'
# GENERAL LINUX
printf "${GREEN}GENERAL LINUX{$NC}\n"
apt-get update && apt-get install -y --no-install-recommends apt-utils
apt-get upgrade
# installs system tools
printf "${GREEN}Install system tools{$NC}\n"
apt-get install -y bzip2 gcc git htop screen vim wget
apt-get upgrade -y bash
apt-get clean

# INSTALL MINICONDA
printf "${GREEN}INSTALL MINICONDA{$NC}\n"
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O Miniconda.sh
bash Miniconda.sh -b
rm -rf Miniconda.sh
export PATH="/root/miniconda3/bin:$PATH"

# PYTHON LIBRARIES
printf "${GREEN}PYTHON LIBRARIES{$NC}\n"
conda update -y conda python
conda install -y pandas
conda install -y ipython
