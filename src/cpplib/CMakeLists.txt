cmake_minimum_required (VERSION 3.8)

set(CPPLIB_SOURCESS
	cpplib.cpp
	cpplib.h)

add_library(cpplib STATIC 
	${CPPLIB_SOURCESS})                

target_include_directories(cpplib
	PUBLIC .)         