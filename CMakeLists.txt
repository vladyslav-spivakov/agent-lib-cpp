cmake_minimum_required(VERSION 3.10)
project(agent-lib LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_executable(agent-lib-exe agent-lib/src/main.cpp)