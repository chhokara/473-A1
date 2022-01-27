# CMake generated Testfile for 
# Source directory: /home/aschhoka/Documents/473-A1/473-exercise-1/test
# Build directory: /home/aschhoka/Documents/473-A1/473-exercise-1/build2/test
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(AllTests "/home/aschhoka/Documents/473-A1/473-exercise-1/build2/test/runAllTests")
set_tests_properties(AllTests PROPERTIES  _BACKTRACE_TRIPLES "/home/aschhoka/Documents/473-A1/473-exercise-1/test/CMakeLists.txt;17;add_test;/home/aschhoka/Documents/473-A1/473-exercise-1/test/CMakeLists.txt;0;")
subdirs("gtest")
