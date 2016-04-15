git clone https://github.com/intel-iot-devkit/mraa.git
git clone https://github.com/intel-iot-devkit/upm.git

#make and install mraa (I2c etc.) without swig bindings
cd mraa
mkdir build
cd build 
cmake -DBUILDSWIG=OFF ..
#cmake -DBUILDSWIGPYTHON=OFF -DBUILDSWIGNODE=OFF  ..
make
sudo make install
cd ..
cd ..


#make and install upm without swig bindings
cd upm
mkdir build
cd build
#npm install headers
cmake  -Wno-dev -DBUILDSWIG=OFF  ..
make
sudo make install
cd ..
cd ..

echo Done.
