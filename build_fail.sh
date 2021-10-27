if test -f "/usr/local/bin/cmake"; then
    cmake=/usr/local/bin/cmake
fi

if test -f "/Applications/CMake.app/Contents/bin/cmake"; then
    cmake=/Applications/CMake.app/Contents/bin/cmake
fi

rm -rf build
$cmake -G Xcode \
	-DCMAKE_SYSTEM_NAME=iOS \
     	-DIOS_PLATFORM=OS \
      	-DIOS_ARCH="armv7;arm64" \
      	-DIOS_ENABLE_BITCODE=ON \
	-B ./build \
	.
	
$cmake --build ./build --config Debug --target ALL_BUILD -j 12

