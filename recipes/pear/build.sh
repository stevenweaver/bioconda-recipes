#!/bin/bash
export CPPFLAGS="-I$PREFIX/include"
export LDFLAGS="-L$PREFIX/lib"
#export LDFLAGS="$(pkg-config --libs zlib)" CFLAGS="$(pkg-config --cflags zlib)"

./configure --prefix=$PREFIX
make
make install
ln -s $PREFIX/bin/pear $PREFIX/bin/pearRM
