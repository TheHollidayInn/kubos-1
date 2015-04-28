# Copyright (C) 2014-2015 ARM Limited. All rights reserved.
#message("mbedOS-GNU-C.cmake included")

# Override the link rules:
set(CMAKE_C_CREATE_SHARED_LIBRARY "echo 'shared libraries not supported' && 1")
set(CMAKE_C_CREATE_SHARED_MODULE  "echo 'shared modules not supported' && 1")
set(CMAKE_C_CREATE_STATIC_LIBRARY "<CMAKE_AR> -cr <LINK_FLAGS> <TARGET> <OBJECTS>")
set(CMAKE_C_COMPILE_OBJECT        "<CMAKE_C_COMPILER> ${YOTTA_TARGET_DEFINITIONS} <DEFINES> <FLAGS> -o <OBJECT> -c <SOURCE>")
set(CMAKE_C_LINK_EXECUTABLE       "<CMAKE_C_COMPILER> <CMAKE_C_LINK_FLAGS> <LINK_FLAGS> <OBJECTS> <LINK_LIBRARIES> -Wl,-Map,<TARGET>.map -Wl,--start-group -lnosys -lm -lc -lgcc -lnosys -lnosys -lm -lc -lgcc -lnosys -Wl,--end-group -o <TARGET>")


set(CMAKE_C_FLAGS_DEBUG_INIT          "-g")
set(CMAKE_C_FLAGS_MINSIZEREL_INIT     "-Os -DNDEBUG")
set(CMAKE_C_FLAGS_RELEASE_INIT        "-Os -DNDEBUG")
set(CMAKE_C_FLAGS_RELWITHDEBINFO_INIT "-Os -g -DNDEBUG")
set(CMAKE_INCLUDE_SYSTEM_FLAG_C "-isystem ")


set(CMAKE_ASM_FLAGS_DEBUG_INIT          "-g")
set(CMAKE_ASM_FLAGS_MINSIZEREL_INIT     "-Os -DNDEBUG")
set(CMAKE_ASM_FLAGS_RELEASE_INIT        "-Os -DNDEBUG")
set(CMAKE_ASM_FLAGS_RELWITHDEBINFO_INIT "-Os -g -DNDEBUG")
set(CMAKE_INCLUDE_SYSTEM_FLAG_ASM  "-isystem ")

