# Set minimun cmake
cmake_minimum_required(VERSION 3.13)

set(ProjectName FreeRTOS-Template)

include(pico_sdk_import.cmake)
include($ENV{FREERTOS_KERNEL_PATH}/portable/ThirdParty/GCC/RP2040/FreeRTOS_Kernel_import.cmake)


# # Include build functions from Pico SDK
# include($ENV{FREERTOS_KERNEL_PATH}/portable/ThirdParty/GCC/RP2040/pico_sdk_import.cmake)

# include($ENV{FREERTOS_KERNEL_PATH}/portable/ThirdParty/GCC/RP2040/FreeRTOS_Kernel_import.cmake)

# Set name of project (as PROJECT_NAME) and C/C++ standards
project(${ProjectName} C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Create pico-sdk sub dir in our project for the libs
pico_sdk_init()

add_subdirectory(src)

# # Tell CMAKE where to find the executable source file
# add_executable(${PROJECT_NAME} freertos-test.c)

# # Create map/bin/hex/uf2 files
# pico_add_extra_outputs(${PROJECT_NAME})

# # Link to pico_stdlib (gpio, time, etc functions)
# target_link_libraries(${PROJECT_NAME} pico_stdlib FreeRTOS)
