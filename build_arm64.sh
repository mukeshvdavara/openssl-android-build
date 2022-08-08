#!/bin/bash -e

export ANDROID_NDK_ROOT=$1
echo "Ndk Path : $ANDROID_NDK_ROOT"
echo "Android Api : $2"
echo "Output path : $3"
PATH=$ANDROID_NDK_ROOT/toolchains/llvm/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/arm-linux-androideabi-4.9/prebuilt/linux-x86_64/bin:$ANDROID_NDK_ROOT/toolchains/aarch64-linux-android-4.9/prebuilt/linux-x86_64/bin:$PATH
./Configure android-arm64 -D__ANDROID_API__=$2 -static no-shared no-tests --prefix=$3
build_library
