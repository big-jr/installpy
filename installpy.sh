#!/bin/bash

if [[ "$#" -ne 1 ]]
then
  echo "Incorrect number of arguments - one full Python version is required"
  exit 1
fi

if ! [[ "$1" =~ ^[[:digit:]]{1,2}\.[[:digit:]]{1,2}\.[[:digit:]]{1,3}$ ]]
then
  echo "Invalid format - the Python must be in the format x.yy.zz, not $1"
  exit 2
fi

PYTHON_VERSION=$1
echo "Trying to download Python version $PYTHON_VERSION from the download site"
wget https://www.python.org/ftp/python/$PYTHON_VERSION/Python-$PYTHON_VERSION.tgz
echo "Python source downloaded"
echo "Extracting files"
tar -zxvf Python-$PYTHON_VERSION.tgz
echo "Files extracted - updating zlib reference"
cd Python-$PYTHON_VERSION
sed -i 's/^#[[:space:]]*zlib[[:space:]]*zlibmodule/zlib zlibmodule/g' ./Modules/Setup
echo "Building Python $PYTHON_VERSION"
./configure --enable-optimizations
echo "Now installing Python $PYTHON_VERSION"
sudo make altinstall
echo "Done"
