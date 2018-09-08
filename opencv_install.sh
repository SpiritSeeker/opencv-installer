mkdir OpenCV
cd OpenCV
apt-get update
apt-get -y upgrade
apt-get install -y git
git clone http://github.com/opencv/opencv.git
git clone http://github.com/opencv/opencv_contrib.git
apt-get install -y build-essential cmake pkg-config
apt-get install -y libjpeg8-dev libtiff5-dev libjasper-dev libpng12-dev
apt-get install -y libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
apt-get install -y libxvidcore-dev libx264-dev
apt-get install -y libgtk-3-dev
apt-get install -y libatlas-base-dev gfortran
apt-get install -y python2.7-dev python3.5-dev
pip install --upgrade pip --user
pip3 install --upgrade pip3 --user
pip install --upgrade numpy --user
pip3 install --upgrade numpy --user
cd opencv/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D WITH_CUDA=OFF -D INSTALL_PYTHON_EXAMPLES=ON -D INSTALL_C_EXAMPLES=OFF -D OPENCV_EXTRA_MODULES_PATH=../../opencv_contrib/modules -D BUILD_EXAMPLES=ON ..
make -j$(nproc)
make install
ldconfig
cd ../../..
rm -rf OpenCV