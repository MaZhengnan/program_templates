# 使用 clang-cl 模拟MSVC
set(CMAKE_C_COMPILER "clang-cl")
set(CMAKE_CXX_COMPILER "clang-cl")
set(CMAKE_LINKER "lld-link")

# MSVC兼容标志
set(CMAKE_CXX_FLAGS "/std:c++20 /EHsc /Zc:__cplusplus")
set(CMAKE_EXE_LINKER_FLAGS "/machine:x64")

# 使用MSVC标准库（需安装Visual Studio）
set(CMAKE_SYSTEM_NAME "Windows")
set(CMAKE_SYSTEM_VERSION "10.0")
