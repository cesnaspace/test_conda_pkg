#!/bin/bash

make main
mkdir -p $PREFIX/bin

cp main $PREFIX/bin/
