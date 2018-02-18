# Yolo
yolo with Docker

# WORKDIR
# WORKDIR is assummed to be your working directory
cd WORKDIR

# Docker Build
WORKDIR$ git clone git@github.com:cjs0818/yolo.git
WORKDIR$ cd yolo
WORKDIR/yolo$ ./docker_build.sh

# Install darknet
WORKDIR/yolo$ cd ..
WORKDIR$ git clone https://github.com/AlexeyAB/darknet

# yolo weights
WORKDIR$ cd darknet
WORKDIR/darknet$ wget https://pjreddie.com/media/files/yolo.weights
WORKDIR/darknet$ wget https://pjreddie.com/media/files/yolo-voc.weights
WORKDIR/darknet$ wget https://pjreddie.com/media/files/tiny-yolo.weights
WORKDIR/darknet$ wget https://pjreddie.com/media/files/yolo9000.weights

# Start Docker
WORKDIR/darknet$ cd ../yolo
WORKDIR/yolo$ ./start.sh

# Compile darknet inside Docker
/root/work$ cd /root/work/darknet
/root/work/darknet$ make

# Test darknet
/root/work/darknet$ chmod 755 image_voc.sh
/root/work/darknet$ ./image_voc.sh
