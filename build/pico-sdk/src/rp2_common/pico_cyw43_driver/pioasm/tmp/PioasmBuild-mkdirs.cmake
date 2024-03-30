# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "D:/Tools/vsarm-rpi-pico/pico-sdk/tools/pioasm"
  "D:/tugas/Github/raspi-pico-freertos/build/pioasm"
  "D:/tugas/Github/raspi-pico-freertos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm"
  "D:/tugas/Github/raspi-pico-freertos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/tmp"
  "D:/tugas/Github/raspi-pico-freertos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp"
  "D:/tugas/Github/raspi-pico-freertos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src"
  "D:/tugas/Github/raspi-pico-freertos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "D:/tugas/Github/raspi-pico-freertos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "D:/tugas/Github/raspi-pico-freertos/build/pico-sdk/src/rp2_common/pico_cyw43_driver/pioasm/src/PioasmBuild-stamp${cfgdir}") # cfgdir has leading slash
endif()
