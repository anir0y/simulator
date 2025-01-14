[![CMake](https://github.com/anir0y/simulator/actions/workflows/cmake.yml/badge.svg)](https://github.com/anir0y/simulator/actions/workflows/cmake.yml)

# CANBus Simulator

By: [Team AutoHackOS](https://autohackos.com)

# Credits
- [ICSim](https://github.com/zombieCraig/ICSim)

# one liner bash

```bash
# run with sudo / root
curl https://raw.githubusercontent.com/anir0y/simulator/main/automate.sh | bash
```

# Compiling
You will need
- can-utils
- cmake
- Common build utilities like make, g++ etc.

You can get can-utils from github or on Ubuntu you may run the follwoing

```
  sudo apt install can-utils  
```

To compile, you can clone the repository, and build using cmake

```
git clone https://github.com/autohackos/simulator
cd simulator
mkdir build
cd build
cmake ..
make
```

# Testing on a virtual CAN interface
You can run the following commands to setup a virtual can interface

```
  sudo modprobe can
  sudo modprobe vcan
  sudo ip link add dev vcan0 type vcan
  sudo ip link set up vcan0
```

# Execution Demo

![sim](https://i.imgur.com/dsbFSJE.png)

