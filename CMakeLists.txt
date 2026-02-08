cmake_minimum_required(VERSION 3.20)

project(agent_lib_root LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 23)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_subdirectory(agent-lib)
add_subdirectory(main-example)
