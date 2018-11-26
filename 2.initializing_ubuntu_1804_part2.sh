sudo apt update -y
sudo apt upgrade -y

# install libboost version 1.65
sudo apt install -y libboost1.65-all-dev libboost1.65-dev libboost1.65-tools-dev libboost-all-dev

# install qt5
sudo apt install -y qt5-default

# install cmake and its qt-gui component
sudo apt install -y cmake-qt-gui

# install cuda dependencies
sudo apt install -y freeglut3 freeglut3-dev libxi-dev libxmu-dev

sudo apt install -y python-pip python3-pip python-numpy python3-numpy

# CUDA 9 requires gcc 6
sudo apt install -y gcc-6 g++-6

# set Gcc and G++ Path to Version 6
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-6 60
sudo update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-6 60

# install opencv dependencies
sudo apt install -y git

sudo apt install -y libgtk-3-dev

# Video I/O:
# set WITH_LIBV4L=ON and WITH_V4L=ON
sudo apt install -y libavcodec-dev libavformat-dev libavutil-dev libswscale-dev libavresample-dev libgphoto2-dev libdc1394-22-dev
sudo apt install -y libgstreamer1.0-dev libgstreamer-plugins-base1.0-dev
sudo apt install -y libxine2-dev libv4l-dev v4l-utils


# Media I/O: 
sudo apt install -y libjpeg8-dev
sudo apt install -y libtiff-dev
sudo apt install -y libgdal-dev
sudo apt install -y libgdcm2-dev 

# Gui:
sudo apt install -y vtk7 libvtk7-dev

# 
sudo apt install -y libtbb-dev
sudo apt install -y pylint pylint3
sudo apt install -y libopenblas-dev
sudo apt install -y libatlas-base-dev 
sudo apt install -y liblapack-dev
sudo apt install -y libeigen3-dev
sudo apt install -y libtesseract-dev
sudo apt install -y ccache libgtkglext1-dev
sudo apt install -y libgoogle-glog-dev libgflags-dev
sudo apt install -y libprotobuf-dev libprotoc-dev protobuf-compiler
sudo apt install -y liblapacke-dev 
sudo apt install -y mesa-utils 
sudo apt install -y libceres-dev 
sudo apt install -y libclblas-dev
sudo apt install -y libclfft-dev 
sudo apt install -y libopenexr-dev 
sudo apt install -y libopenni-dev 
sudo apt install -y libopenni2-dev 
sudo apt install -y libopenni-sensor-primesense-dev 
sudo apt install -y libopenni-sensor-primesense0
sudo apt install -y libhdf5-dev 
sudo apt install -y hdf5-tools 
sudo apt install -y libflake-dev
sudo apt install -y libcanberra-gtk-module

# install lib jasper
sudo add-apt-repository "deb http://security.ubuntu.com/ubuntu xenial-security main"
sudo apt update
sudo apt install -y libjasper1 libjasper-dev

# install java default
sudo apt install -y ant default-jdk

sudo pip install tensorflow-gpu
sudo pip install keras
sudo pip3 install tensorflow-gpu
sudo pip3 install keras

# according to https://github.com/opencv/opencv/issues/8704
# add  --expt-relaxed-constexpr  to CUDA_NVCC_FLAGS
# disable ccache

# sudo make -j16
# sudo make install
# sudo ldconfig

sudo pip install mayavi
sudo apt install -y python-pyqt5
sudo apt install -y pyqt5-dev-tools 


sudo apt install -y python3-pyqt5
sudo pip3 install mayavi

# cloud compare dependency
sudo apt install -y libqt5svg5-dev

# PCL dependencies
sudo apt install -y libflann-dev
sudo apt install -y libusb-1.0-0-dev
sudo apt install libpcap-dev 

# nodeJS install
sudo apt install -y nodejs
sudo apt install -y npm

# dependencies for Mayavi
sudo pip3 install plyfile
sudo apt install -y python3-pyqt5.qtsvg
sudo apt install -y python-pyqt5.qtsvg
sudo apt install -y qttools5-dev-tools 

# install atom IDE
sudo apt install -y curl
curl -sL https://packagecloud.io/AtomEditor/atom/gpgkey | sudo apt-key add -
sudo sh -c 'echo "deb [arch=amd64] https://packagecloud.io/AtomEditor/atom/any/ any main" > /etc/apt/sources.list.d/atom.list'
sudo apt update -y
sudo apt install -y atom

# dowload one of the "runfile (local)" installation packages from cuda toolkit archive 
wget https://developer.nvidia.com/compute/cuda/9.0/Prod/local_installers/cuda_9.0.176_384.81_linux-run
chmod +x cuda_9.0.176_384.81_linux-run 
# --override is used to forcely pass g++ compiler version check
sudo ./cuda_9.0.176_384.81_linux-run --override

# Answer questions following while installation begin
# You are attempting to install on an unsupported configuration. Do you wish to continue? y
# Install NVIDIA Accelerated Graphics Driver for Linux-x86_64 384.81? n
# Install the CUDA 9.0 Toolkit? y

# setup cuda relative paths
echo '#set CUDA path' >> ~/.bashrc
echo 'export PATH=/usr/local/cuda/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH' >> ~/.bash.rc
source ~/.bashrc

# install cuDNN v7.0 for Cuda 9.0
# https://developer.nvidia.com/rdp/cudnn-archive
tar -xzvf cudnn-9.0-linux-x64-v7.tgz

sudo cp -P cuda/include/cudnn.h /usr/local/cuda-9.0/include/
sudo cp -P cuda/lib64/libcudnn* /usr/local/cuda-9.0/lib64/
sudo chmod a+r /usr/local/cuda-9.0/lib64/libcudnn*



















