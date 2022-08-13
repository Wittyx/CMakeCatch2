cmake_minimum_required (VERSION 3.8)

set(CATCH2_TEST_SOURCES
	catch.hpp TestCPP.cpp tests.cpp
)

add_executable(Catch2_Test 
	${CATCH2_TEST_SOURCES})

target_link_libraries(Catch2_Test 
	cpplib)