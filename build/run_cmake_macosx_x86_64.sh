#!/bin/sh
xcodebuild -version -sdk

echo "Found SDK: $xcodeSDK"

mkdir -p mac_build
cd mac_build

repo_path="$PWD/../.."
src_path="${repo_path}"

echo "PATH = ${PATH}"
echo "repo_path=${repo_path}"

if [ -d $CMAKE_HOME ]; then
    export PATH=$CMAKE_HOME/CMake.app/Contents/bin:$PATH
else
    echo "CMAKE_HOME=${CMAKE_HOME} CMAKE error"
fi

if [ -z ${PLATFORM} ]
then
    BUILD_PLATFORM=Default
else
    BUILD_PLATFORM=${PLATFORM}
fi

echo "build platform: ${BUILD_PLATFORM}"

cmake "${src_path}/" -GXcode \
    -DBUILD_PLATFORM="${BUILD_PLATFORM}" \


exit 0