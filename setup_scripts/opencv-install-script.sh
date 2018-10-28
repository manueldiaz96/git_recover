#!/bin/bash

cd ~
git clone https://github.com/opencv/opencv.git
git clone https://github.com/opencv/opencv_contrib.git

cd ~/opencv_contrib
git checkout 3.4.1
cd ~/opencv
git checkout 3.4.1
mkdir build
cd build

cmake -D CMAKE_BUILD_TYPE=Release -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib/modules -D INSTALL_C_EXAMPLES=OFF -D CMAKE_INSTALL_PREFIX=/usr/local ..

make -j4 -w

sudo make install
sudo ldconfig
