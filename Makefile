OBJECTS = dump_exfat.o
SRCS = dump_exfat.c

CC = ~/tools/linaro_toolchain/gcc-linaro-7.4.1-2019.02-x86_64_aarch64-linux-gnu/bin/aarch64-linux-gnu-gcc
CFLAGS = -static

TARGET = dump_exfat

$(TARGET) : $(OBJECTS)
	$(CC) -o $(TARGET) $(OBJECTS) $(CFLAGS)
	rm $(OBJECTS)

main.o : dump_exfat.c dump_exfat.h
