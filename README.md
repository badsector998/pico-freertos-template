# Raspi Pico 2040 Template With FreeRTOS
- Main file is inside `./src/`
- Copy `FreeRTOSConfig.h` to any source and edit accordingly to project needs
- Edit `CMakeLists.txt` and add new subdirectories if there is custom lib beside FreeRTOS

## Commmon Problems
- Always check header files points to correct library location. If not set Correctly check root `CMakeLists.txt`
- Always check compiler and make sure it uses `arm-none-eabi-gcc`
- Always check for environment variables that points between `${PICO_SDK_PATH}` or `${FREERTOS_KERNEL_PATH`