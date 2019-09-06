#!/bin/bash
#
# Script to install linux system tools and basic python components.
#
# GENERAL LINUX
apt-get update
apt-get upgrade
# installs system tools
apt-get install -y bzip2 gcc git htop screen vim wget
apt-get upgrade -y #!/usr/bin/env bash
apt-get clean

# INSTALL MINICONDA
wget https://repo.continuum.io/miniconda/Miniconda3-latest-Linux-x86_64.sh -O \Miniconda.sh
bash Miniconda.sh -b
rm -rf Miniconda.sh
export PATH="/root/miniconda3/bin:$PATH"

# PYTHON LIBRARIES
conda update -y conda python pandas ipython
