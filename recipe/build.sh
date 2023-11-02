cd $SRC_DIR/med-4.1.1 
./configure CFLAGS=-O2 CXXFLAGS=-O2 FFLAGS=-O2 --disable-python --prefix=$PREFIX --with-hdf5=$BUILD_PREFIX
make 
make install