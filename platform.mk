UNAME := $(shell uname -s)
ifeq ($(UNAME),Darwin)
	OS_SHARED_EXT = .dylib
	OS_STATIC_EXT = .a
	OS_EXEC_EXT = 
	LIBRARIES = $(COMMON_LIBRARIES) $(OSX_LIBRARIES)
else
	ifeq ($(findstring MINGW,$(UNAME)),MINGW)
		OS_SHARED_EXT = .dll
		OS_STATIC_EXT = .a
		OS_EXEC_EXT = .exe
		CC := gcc
		LIBRARIES = $(COMMON_LIBRARIES) $(MINGW_LIBRARIES)
		PREBUILT_DIR := $(BASE_DIR)/external/Win32
	else
		OS_SHARED = .so
		OS_STATIC_EXT = .a
		OS_EXEC_EXT = 
		LIBRARIES = $(COMMON_LIBRARIES) $(LINUX_LIBRARIES)
	endif
endif