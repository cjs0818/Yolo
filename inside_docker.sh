export OS=OSX
echo $OS
#export OS=Linux

#---------------------------------
# cudnn
cp /root/work/CuDNN/cuda/include/cudnn.h /usr/local/cuda/include
cp /root/work/CuDNN/cuda/lib64/libcudnn* /usr/local/cuda/lib64
chmod a+r /usr/local/cuda/include/cudnn.h

echo "/usr/local/cuda/lib64" >> /etc/ld.so.conf
ldconfig
#---------------------------------

