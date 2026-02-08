add_library(agent_lib
    ./src/agent_lib.cpp
)

target_include_directories(agent_lib
    PUBLIC
        ${CMAKE_CURRENT_SOURCE_DIR}/include
)
