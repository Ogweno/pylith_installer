#!/bin/bash

# Directory structure is
#   pylith
#     - src
#     - build
#     - dist
#
# Run this script from the pylith directory.

cwd=`pwd`

NTHREADS=4
PREFIX=${cwd}/dist

mkdir -p build
pushd build
../src/configure --enable-mpi=mpich --enable-cppunit --enable-numpy --enable-proj4 --enable-hdf5 --enable-netcdfpy --enable-cmake --enable-setuptools --enable-nemesis --enable-fiat --enable-pcre --enable-swig --with-make-threads=${NTHREADS} --prefix=${PREFIX}
