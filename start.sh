# You should do the following first in the other terminal
# socat TCP-LISTEN:6000,reuseaddr,fork UNIX-CLIENT:\"$DISPLAY\"

#-------------
#DISPLAY_IP=$(ifconfig enp0s5 | grep inet | awk '$1=="inet" {print $2}')
#WORKDIR=/home/jschoi/work/Yolo
DISPLAY_IP=$(ifconfig en0 | grep inet | awk '$1=="inet" {print $2}')
WORKDIR=/Users/jschoi/work/Yolo
#-------------

IMAGE_ID=jschoi/yolo
NAME_ID=jschoi_yolo

#IMAGE_ID=pristine70/ros-kinetic:gazebo8 
#IMAGE_ID=gazebo8
#IMAGE_ID=benblumeristuary/gazebo8_with_ros
#IMAGE_ID=kinetic-ros-base:rqt
#IMAGE_ID=openhs/ubuntu-nvidia

#nvidia-docker run -it --rm \
#    --volume /home/jschoi/work/Yolo:/root/work:rw \
#    --volume /Users/jschoi/work/Yolo:/root/work:rw \

docker run -it --rm \
    --env DISPLAY=$DISPLAY_IP:0 \
    --env LIBGL_ALWAYS_INDIRECT=1 \
    --volume /tmp/.X11-unix:/tmp/.X11-unix:rw \
    --volume $WORKDIR:/root/work:rw \
    --name $NAME_ID \
    -p 22345:11345 \
    $IMAGE_ID \
    /bin/bash
#export containerId=$(docker ps -l -q)

#xhost +local:`docker inspect --format='{{ .Config.Hostname }}' $containerId`
#docker start $containerId
#docker attach $containerId
