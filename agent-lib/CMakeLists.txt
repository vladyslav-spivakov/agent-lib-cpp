cmake_minimum_required(VERSION 3.20)

project(agent_lib LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

add_library(agent_lib
    src/agent_lib.cpp
)

target_include_directories(agent_lib
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_executable(agent_lib_example
    src/main.cpp
)

target_link_libraries(agent_lib_example
    PRIVATE
        agent_lib
)
