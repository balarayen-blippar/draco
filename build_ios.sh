mkdir build_arm64
cd ./build_arm64
cmake ../ -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchains/arm64-ios.cmake -DDRACO_POINT_CLOUD_COMPRESSION=OFF
make
cd ..

mkdir build_armv7
cd ./build_armv7
cmake ../ -DCMAKE_TOOLCHAIN_FILE=../cmake/toolchains/armv7-ios.cmake -DDRACO_POINT_CLOUD_COMPRESSION=OFF
make
cd ..

lipo build_armv7/libdraco.a build_arm64/libdraco.a -create -output libdraco.a
