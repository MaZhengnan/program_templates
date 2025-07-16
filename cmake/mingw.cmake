# 跨平台MinGW配置（Windows/Linux均可使用）
if(WIN32)
    set(CMAKE_C_COMPILER "x86_64-w64-mingw32-gcc")
    set(CMAKE_CXX_COMPILER "x86_64-w64-mingw32-g++")
else()
    # Linux/macOS下使用本地MinGW交叉编译
    set(CMAKE_C_COMPILER "x86_64-w64-mingw32-gcc")
    set(CMAKE_CXX_COMPILER "x86_64-w64-mingw32-g++")
endif()

# 静态链接确保跨平台
set(CMAKE_EXE_LINKER_FLAGS "-static -static-libgcc -static-libstdc++")
