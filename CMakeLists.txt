cmake_minimum_required(VERSION 2.6)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_SOURCE_DIR}/cmake/Modules/")

project(tasbot)

set(Boost_USE_STATIC_LIBS ON)
set(Boost_USE_MULTITHREADED ON)
set(Boost_USE_STATIC_RUNTIME ON)
find_package(Boost REQUIRED COMPONENTS filesystem system program_options regex thread chrono)
find_package(Protobuf REQUIRED)

include_directories(${Boost_INCLUDE_DIRS} ${Protobuf_INCLUDE_DIRS})
include_directories("include")

set(LIBS ${Boost_LIBRARIES} ${PROTOBUF_LITE_LIBRARIES} dl)
add_definitions("-std=c++11")

# Build learnfun
add_executable(learnfun
  "src/learnfun.cc")
target_link_libraries(learnfun ${LIBS})
