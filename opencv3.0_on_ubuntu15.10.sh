echo 'OpenCV 3.0 installation script'

echo 'Installing dependencies'
sudo apt-get -y install libopencv-dev build-essential cmake git libgtk2.0-dev pkg-config python-dev python-numpy libdc1394-22 libdc1394-22-dev libjpeg-dev libpng12-dev libjasper-dev libavcodec-dev libavformat-dev libswscale-dev libxine2-dev libtiff5-dev libgstreamer0.10-dev libgstreamer-plugins-base0.10-dev libv4l-dev libtbb-dev libqt4-dev libfaac-dev libmp3lame-dev libopencore-amrnb-dev libopencore-amrwb-dev libtheora-dev libvorbis-dev libxvidcore-dev x264 v4l-utils
echo 'Installing dependencies...DONE'

echo 'Downloading'
cd
mkdir opencv
cd opencv
git clone https://github.com/Itseez/opencv.git
git clone https://github.com/Itseez/opencv_contrib.git
echo 'Downloading...DONE'

echo 'Building'
cd opencv
mkdir build_release
cd build_release
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_TBB=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_V4L=ON -D WITH_QT=ON -D BUILD_NEW_PYTHON_SUPPORT=ON -D WITH_OPENGL=ON -D WITH_IPP=OFF -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules ..
make -j4
echo 'Building...DONE'

echo 'Installing'
sudo make install
echo 'Installing...DONE'
