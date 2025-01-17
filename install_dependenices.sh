#!/bin/bash

# compile bag of words
cd pop_planar_slam/Thirdparty/DBoW2
mkdir build
cd build
cmake .. -DCMAKE_BUILD_TYPE=Release
make -j2

# install isam dependency
sudo apt-get install cmake libsuitesparse-dev libeigen3-dev libsdl1.2-dev doxygen graphviz ros-*-pcl-conversions ros-*-pcl-ros ros-*-rviz ros-*-rviz-plugin-tutorials

# install python library
easy_install pip
cd ../../../..
pip install -r py_requirements.txt --user
