sudo apt-get -y install wget unzip cmake

wget -O ./thirdparty/gtest.zip https://github.com/google/googletest/archive/refs/tags/release-1.11.0.zip
unzip ./thirdparty/gtest -d ./thirdparty
mkdir ./thirdparty/build
mkdir ./thirdparty/install

cd ./thirdparty/build

cmake -DCMAKE_INSTALL_PREFIX=../install ../googletest-release-1.11.0
make -j
sudo make install

cd ../
sudo rm -rf build
sudo rm -rf googletest-release-1.11.0
sudo rm -rf gtest.zip
