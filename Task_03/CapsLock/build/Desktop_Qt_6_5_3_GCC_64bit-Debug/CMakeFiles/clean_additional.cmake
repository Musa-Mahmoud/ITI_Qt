# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles/appCapsLock_autogen.dir/AutogenUsed.txt"
  "CMakeFiles/appCapsLock_autogen.dir/ParseCache.txt"
  "appCapsLock_autogen"
  )
endif()
