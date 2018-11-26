sudo apt update -y
sudo apt upgrade -y

# install libboost version 1.65
sudo apt install -y libboost1.65-all-dev libboost1.65-dev libboost1.65-tools-dev libboost-all-dev

# install qt5
sudo apt install -y qt5-default

# install cmake and its qt-gui component
sudo apt install -y cmake-qt-gui

sudo apt install -y libeigen3-dev

sudo apt install -y libqhull-dev

sudo apt install -y libpng-dev

sudo apt install -y libvtk7-dev vtk7

sudo apt install -y libpcap-dev


# replace the following by using "sudo apt install libpcl-dev"???

git clone https://github.com/PointCloudLibrary/pcl.git

cd pcl
mkdir build
cd build
cmake ..
sudo make install

# install opencv 3.2 ?
sudo apt install -y libopencv-dev
sudo pip install opencv-contrib-python -y
