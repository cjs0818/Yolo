# This is an auto generated Dockerfile for ros:kinetic-desktop-full
# generated from templates/docker_images/create_ros_image.Dockerfile.em
# generated on 2017-06-10 20:30:32 +0000
#--------------------
# For RoS
#FROM osrf/ros:kinetic-desktop
#RUN apt-get update && apt-get install -y \
#    ros-kinetic-desktop-full=1.3.1-0* \
#    && rm -rf /var/lib/apt/lists/*
#--------------------

#--------------------
# For CUDA
FROM nvidia/cuda
#RUN ls -al
#--------------------

#--------------------
# For OpenCV
#FROM jjanzic/docker-python3-opencv
#RUN apt-get update && apt-get install -y \
#    vim \
#    wget \
#    libgtk2.0-dev \
#    pkg-config \
#    && rm -rf /var/lib/apt/lists/*
#--------------------

# install ros packages
#RUN apt-get update && apt-get install -y \
#    ros-kinetic-desktop-full=1.3.1-0* \
#    && rm -rf /var/lib/apt/lists/*

# install vim
RUN apt-get update && apt-get install -y \
    vim \
    wget \
    && rm -rf /var/lib/apt/lists/*

# generate /root/work directory
WORKDIR /root/work
# copy .bashrc from host to target /root directory
ADD .bashrc /root

# setup entrypoint
#COPY ./inside_docker_cudnn.sh /
#RUN /inside_docker_cudnn.sh


#--------------------------------

#RUN echo 'alias so="source ~/.bashrc"' >> ~/.bashrc
#RUN echo 'alias ll="ls -al"' >> ~/.bashrc
#CMD {"echo","'alias ll="ls -al"' >> ~/.bashrc"}
#RUN echo 'source /opt/ros/$ROS_DISTRO/setup.bash' >> ~/.bashrc

#RUN cd /root; git clone https://github.com/AlexeyAB/darknet
#RUN cd /root/darknet; make


# You need the following files
#RUN cd /root/darknet; wget https://pjreddie.com/media/files/yolo.weights
#RUN cd /root/darknet; wget https://pjreddie.com/media/files/yolo-voc.weights
#RUN cd /root/darknet; wget https://pjreddie.com/media/files/tiny-yolo.weights
#RUN cd /root/darknet; wget https://pjreddie.com/media/files/yolo9000.weights

#-----------------
#  OpenCV
#RUN apt-get install build-essential
#RUN apt-get install cmake git libgtk2.0-dev pkg-config libavcodec-dev libavformat-dev libswscale-dev
#RUN cd /root; git clone https://github.com/opencv/opencv
#RUN cd /root/opencv; mkdir build; cd build; cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..
