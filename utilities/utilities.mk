INCLUDES = ../include
SOURCES = $(TARGET).c

OSX_LIBRARIES = usb-1.0
MINGW_LIBRARIES = ws2_32 setupapi
COMMON_LIBRARIES = syringe curl z
LDFLAGS = -L../syringe -L/opt/local/lib

include ../common.mk