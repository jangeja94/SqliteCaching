cmake_minimum_required (VERSION 2.8.12.2)
project (SpeedTest)
add_executable(speedTest speedTest.cpp sqlite3.o)
add_executable(config init.cpp sqlite3.o)

include_directories(/usr/include)
link_directories(/usr/lib)

target_link_libraries(speedTest sqlite3)
target_link_libraries(config sqlite3)
