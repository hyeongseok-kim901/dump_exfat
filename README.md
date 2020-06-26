# debug.exfat
```
debugging tool for exfat filesystem
```

# Building debug.exfat
Prerequisite packages:
```
For Ubuntu:
    sudo apt-get install autoconf libtool pkg-config
```

Build steps:
```
    cd into dump_exfat directory:
    ./autogen.sh
    ./configure
    make
```

Build steps for arm:
```
    go to https://releases.linaro.org/components/toolchain/binaries/
    download toolchain & set path

    cd into dump_exfat directory:
    ./autogen.sh
    ./configure --target=ARM64 --host=aarch64-linux-gnu CFLAGS=-static
    make LDFLAGS="-static"
```

# Usage
```
Usage : ./debug.exfat [-bcdfht] [file_path] [partition_path]
    -b : print Boot sector in hex mode
        command) debug.exfat -b /dev/block/mmcblk0p1
    -c : print Cluster bit map info and map in hex mode
        command) debug.exfat -c /dev/block/mmcblk0p1
    -d : dump(extract) file. will work with -f option automatically.
        command) debug.exfat -d [file_path] [partition_path]
    eg)      debug.exfat -d /abc/12345 /dev/block/mmcblk0p1
    -f : travel File path to get dentry info
        command) debug.exfat -f [file_path] [partition_path]
        eg)      If you want to extract file 12345 under directory abc, use below command
                 debug.exfat -f /abc/12345 /dev/block/mmcblk0p1
    -h : print Help usage
        command) debug.exfat -h
    -m : support mount mode
        enter debugfs_exfat prompt and can listup file or change directory like shell.
        it does not use mount system call.
        command) debug.exfat -m /dev/block/mmcblk0p1
        usable command in prompt) ls(or ll), cd, exit etc
    -t : print FAT Table
        command) debug.exfat -t /dev/block/mmcblk0p1
```
