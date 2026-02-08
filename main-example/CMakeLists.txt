add_executable(main_example
    main.cc
)

target_link_libraries(main_example
    PRIVATE
        agent_lib
)
