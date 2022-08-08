#!/bin/bash -e

export ANDROID_NDK_ROOT=$1
echo "Ndk Path : $ANDROID_NDK_ROOT"
echo "Android Api : $2"
echo "Output path : $3"
PATH=$1/toolchains/llvm/prebuilt/linux-x86_64/bin:$1/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$1/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH
./Configure android-arm64 -D__ANDROID_API__=$2 -static no-shared no-tests --prefix=$3
