cmake_minimum_required (VERSION 3.8)

set(CMAKECATCH2_SOURCES
	CMakeCatch2.cpp CMakeCatch2.h
)

add_subdirectory(cpplib)

add_executable(CMakeCatch2  
	${CMAKECATCH2_SOURCES})

target_link_libraries(CMakeCatch2 
	cpplib)