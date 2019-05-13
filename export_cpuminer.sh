#!/bin/bash

if [ $# != 2 ] ; then
    echo "usage $0 PATH_TO_BINARY TARGET_FOLDER"
    exit 1
fi

PATH_TO_BINARY="$1"
TARGET_FOLDER="$2"

# if we cannot find the the binary we have to abort
if [ ! -f "$PATH_TO_BINARY" ] ; then
    echo "The file '$PATH_TO_BINARY' was not found. Aborting!"
    exit 1
fi

# copy the binary to the target folder
# create directories if required
echo "---> copy binary itself"
mkdir $TARGET_FOLDER/{bin,lib,lib64}
cp -p "$PATH_TO_BINARY" "$TARGET_FOLDER/bin"

# copy the required shared libs to the target folder
# create directories if required
echo "---> copy libraries"
for lib in `ldd "$PATH_TO_BINARY" | egrep -o '/lib.*\.[0-9]'` ; do
   if [ -f "$lib" ] ; then
        cp -v --parents "$lib" "$TARGET_FOLDER"
   fi  
done

echo "Done!"


