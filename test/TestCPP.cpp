
#include <vector>

#include "catch.hpp"
#include "cpplib.h"

TEST_CASE("FindMaxAgain") {
  CPPLib cpplib;

  SECTION("FindMaxAgain Should find max of consecutive numbers") {
    std::vector<int> inputs = {1, 2, 3, 4};
    REQUIRE(cpplib.FindMax(inputs) == 6);
  }

}
