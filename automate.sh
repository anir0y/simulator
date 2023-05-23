#!/bin/bash

# This script will compile and test the simulator on a virtual CAN interface.

# Install dependencies
sudo apt install can-utils

# Clone the repository
git clone https://github.com/autohackos/simulator

# Change directory to the simulator directory
cd simulator

# Create a build directory
mkdir build

# Change directory to the build directory
cd build

# Configure the project using CMake
cmake ..

# Build the project
make

# Setup a virtual CAN interface
sudo modprobe can
sudo modprobe vcan
sudo ip link add dev vcan0 type vcan
sudo ip link set up vcan0

# Run the simulator
./build/console/console

# run the attacker
./build/controller/controller
