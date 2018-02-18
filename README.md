# Install Docker
* At first, install Docker to your system

 * Download Docker CE (Community Edition)

    * https://www.docker.com/community-edition


# WORKDIR
(WORKDIR is assummed to be your working directory)

$ cd WORKDIR


# Install darknet
WORKDIR/yolo$ cd ..

WORKDIR$ git clone https://github.com/AlexeyAB/darknet


# yolo weights
WORKDIR$ cd darknet

WORKDIR/darknet$ wget https://pjreddie.com/media/files/yolo.weights

WORKDIR/darknet$ wget https://pjreddie.com/media/files/yolo-voc.weights

WORKDIR/darknet$ wget https://pjreddie.com/media/files/tiny-yolo.weights

WORKDIR/darknet$ wget https://pjreddie.com/media/files/yolo9000.weights


# Docker Build
WORKDIR/darknet$ cd ../yolo

WORKDIR$ git clone git@github.com:cjs0818/yolo.git

WORKDIR$ cd yolo

WORKDIR/yolo$ ./docker_build.sh

-- Change DISPLAY_IP in start.sh according to your system (using ifconfig)

-- Change WORKDIR in start.sh according to your system


# Start Docker
WORKDIR/yolo$ ./start.sh


# Compile darknet inside Docker
/root/work$ cd /root/work/darknet

/root/work/darknet$ make

# Test darknet
/root/work/darknet$ chmod 755 image_voc.sh

/root/work/darknet$ ./image_voc.sh
