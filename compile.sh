#!/bin/bash

set -ev 

DIRECTORY=build

if [ -d "$DIRECTORY" ]; then
	rm -rf $DIRECTORY
	echo "build folder removed"
fi

mkdir $DIRECTORY
cd $DIRECTORY
cmake ../
make