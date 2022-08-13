cmake_minimum_required (VERSION 3.8)

project ("CMakeCatch2")

add_compile_options(--std=c++14 -Wall)    

add_subdirectory(src)
add_subdirectory(test)