#!/usr/bin/env bash

echo *******************************************
echo * Unpacking Sources
echo *******************************************

mkdir -p toolchain/build/
cd toolchain/
mkdir -p build/yosys/ && tar -xvzf yosys-0.9.tgz -C build/yosys/ --strip-components 1
mkdir -p build/graywolf/ && tar -xvzf graywolf-0.1.6.patch.tgz -C build/graywolf/ --strip-components 1
mkdir -p build/qrouter/ && tar -xvzf qrouter-1.4.59.tgz -C build/qrouter/ --strip-components 1
mkdir -p build/magic/ && tar -xvzf magic-8.3.50.tgz -C build/magic/ --strip-components 1
mkdir -p build/netgen/ && tar -xvzf netgen-1.5.134.tgz -C build/netgen/ --strip-components 1
mkdir -p build/qflow/ && tar -xvzf qflow-1.3.17.tgz -C build/qflow/ --strip-components 1
cd build/

echo *******************************************
echo * Installing Dependencies
echo *******************************************

sudo yum update
sudo yum install bison flex gawk \
    graphviz gcc gcc-c++ cmake python3 -y
sudo yum install readline-devel libffi-devel python3-tkinter -y
sudo yum install m4 mesa-libGL-devel freeglut freeglut-devel gsl-devel -y
sudo yum install tk tk-devel tcsh -y
sudo yum install autoconf -y
sudo yum install automake -y
sudo yum install libtool -y

echo *******************************************
echo * Installing Yosys
echo *******************************************

#git clone https://github.com/YosysHQ/yosys.git
cd yosys/
make config-gcc
make
sudo make install
cd ../

echo *******************************************
echo * Installing Graywolf
echo *******************************************

#git clone https://github.com/rubund/graywolf.git
cd graywolf/
mkdir build/
cd build/
cmake ..
make
sudo make install
cd ../../

echo *******************************************
echo * Installing Qrouter
echo *******************************************

#git clone git://opencircuitdesign.com/qrouter-1.4
cd qrouter/
./configure
make
sudo make install
cd ../

echo *******************************************
echo * Installing Magic
echo *******************************************

#wget "http://opencircuitdesign.com/magic/archive/magic-8.3.50.tgz"
cd magic/
./configure
make
sudo make install
cd ../

echo *******************************************
echo * Installing Netgen
echo *******************************************

#git clone git://opencircuitdesign.com/netgen-1.5
cd netgen/
./configure
make
sudo make install
cd ../

echo *******************************************
echo * Installing Qflow
echo *******************************************

#git clone git://opencircuitdesign.com/qflow-1.3
cd qflow/
./configure 
make
sudo make install
cd ../

cd ../../