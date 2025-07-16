# 设置编译器
set(CMAKE_C_COMPILER "clang")
set(CMAKE_CXX_COMPILER "clang++")

# 使用 lld 链接器（更快）
set(CMAKE_EXE_LINKER_FLAGS "-fuse-ld=lld")
set(CMAKE_SHARED_LINKER_FLAGS "-fuse-ld=lld")

# 标准库配置（可选 libc++）
set(CMAKE_CXX_FLAGS "-stdlib=libc++")

# 调试信息格式
set(CMAKE_C_FLAGS_DEBUG "-g -O0")
set(CMAKE_CXX_FLAGS_DEBUG "-g -O0")

# 其他 Clang 特定选项
add_compile_options(-Wall -Wextra -Wpedantic)
