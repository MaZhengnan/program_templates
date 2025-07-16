# 强制指定 MinGW 目标
set(CMAKE_SYSTEM_NAME "Windows")
set(CMAKE_SYSTEM_PROCESSOR "x86_64")

# 编译器配置
set(CMAKE_C_COMPILER "clang")
set(CMAKE_CXX_COMPILER "clang++")
set(CMAKE_C_COMPILER_TARGET "x86_64-w64-mingw32")
set(CMAKE_CXX_COMPILER_TARGET "x86_64-w64-mingw32")

# 使用 MinGW 的标准库
set(CMAKE_CXX_FLAGS "--target=x86_64-w64-mingw32 -stdlib=libstdc++")
# set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=lld -static-libgcc -static-libstdc++")

set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=lld -static-libgcc")
# 工具链路径（如果 LLVM/MinGW 不在默认 PATH 中）
# set(LLVM_ROOT "C:/LLVM")
# set(CMAKE_AR "${LLVM_ROOT}/bin/llvm-ar")
# set(CMAKE_RANLIB "${LLVM_ROOT}/bin/llvm-ranlib")

# Windows 特定选项
add_compile_options(-DWIN32 -D_WINDOWS)
