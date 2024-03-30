# Add c files to be compiled as executables
add_executable(${ProjectName}
    freertos-test.c
)

# Include current dir in case there are header files or external files
target_include_directories(${ProjectName}
    PRIVATE ${CMAKE_CURRENT_LIST_DIR}
)

# Library explicit include declaration
target_link_libraries(${ProjectName}
    pico_stdlib
    FreeRTOS-Kernel-Heap4
)

pico_add_extra_outputs(${ProjectName})

