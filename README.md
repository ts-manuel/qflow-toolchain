# Qflow Toolchain


<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li><a href="#about-the-project">About The Project</a></li>
    <li><a href="#toolchain-installation">Toolchain Installation</a></li>
    <li><a href="#getting-startted">Getting Started</a></li>
    <li><a href="#resources">Resources</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project
This repository gathers all essential sources for compiling the Qflow toolchain, an open-source VLSI design tool. The entire process of compiling and installing the toolchain is automated by a single shell script. The source files for the dependencies are packed inside this repository, this means that you dont have the latest versions but the ones that are proven to work together. 


<!-- INSTALLING TOOLCHAIN -->
## Toolchain Installation

To install the toolchain clone the repository on your machine and run the install script.\
### Ubuntu:

    > git clone https://github.com/ts-manuel/qflow-toolchain.git
    > cd qflow-toolchain
    > ./install-ubuntu.sh

### CentOS: 

    > git clone https://github.com/ts-manuel/qflow-toolchain.git
    > cd qflow-toolchain
    > ./install-centos.sh

### Tested on
+ Ubuntu 22.04 LTS
+ Ubuntu 23.10
+ CentOS 7


<!-- GETTING STARTED -->
## Getting Started

The `/examples` folder contains sample verilog code.\
Run the gui inside the `/examples/map9v3` folder to complete the [qflow tutorial](https://http://opencircuitdesign.com/qflow/tutorial.html).

    > cd examples/map9v3
    > qflow gui


<!-- RESOURCEES -->
## Resources
+ [Qflow 1.3: An Open-Source Digital Synthesis Flow](https://http://opencircuitdesign.com/qflow/)
+ [Qflow 1.3 Digital Synthesis Flow Tutorial Page](https://http://opencircuitdesign.com/qflow/tutorial.html)
+ [Yosys](https://yosyshq.readthedocs.io/projects/yosys/en/latest/)
+ [Qrouter](http://opencircuitdesign.com/qrouter/)
+ [Magic](http://opencircuitdesign.com/magic/)