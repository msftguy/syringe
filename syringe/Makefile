# /syringe/Makefile

SUBDIRS = exploits

MKSTATICLIB = 1

INCLUDES = ../include ../include/resources

SOURCES = \
	common.c		\
	libirecovery.c	\
	libpartial.c	\
	libpois0n.c		\

PREMADE_OBJECTS = exploits/limera1n.o exploits/steaks4uce.o

OSX_LIBRARIES = usb-1.0
COMMON_LIBRARIES = curl z
LDFLAGS = -L/opt/local/lib
CFLAGS = -DCURL_STATICLIB=1

TARGET = syringe

include ../common.mk
