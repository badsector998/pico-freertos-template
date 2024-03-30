# Set minimun cmake
cmake_minimum_required(VERSION 3.13)

# Set ENV (var value). Applied to sub directories
set(ProjectName FreeRTOS-Template)
set(FREERTOS_KERNEL_PATH ${CMAKE_CURRENT_LIST_DIR}/lib/FreeRTOS-Kernel)

# Include them lib bastards
include(pico_sdk_import.cmake)
include(${FREERTOS_KERNEL_PATH}/portable/ThirdParty/GCC/RP2040/FreeRTOS_Kernel_import.cmake)

# Set name of project (as PROJECT_NAME) and C/C++ standards
project(${ProjectName} C CXX ASM)
set(CMAKE_C_STANDARD 11)
set(CMAKE_CXX_STANDARD 17)

# Create pico-sdk sub dir in our project for the libs
pico_sdk_init()

add_subdirectory(src)
