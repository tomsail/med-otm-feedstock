git clone https://github.com/HDFGroup/hdf5.git
cd hdf5
git checkout hdf5_1_10_9
./configure  --prefix=$PREFIX
make 
make install

cd $SRC_DIR/med-4.1.1 
./configure CFLAGS=-O2 CXXFLAGS=-O2 FFLAGS=-O2 --disable-python --prefix=$PREFIX --with-hdf5=$PREFIX
make 
make install