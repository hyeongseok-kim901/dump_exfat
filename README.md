# dump_exfat
```
debugging tool for exfat filesystem
```

# Building dump_exfat
```
cd into dump_exfat directory:
    (Change Makefile to use your compiler)
    make
```

# Usage
```
Usage : ./dump_exfat [-bcdfht] [file_path] [partition_path]
    -b : print Boot sector in hex mode
        command) dump_exfat -b /dev/block/mmcblk0p1
    -c : print Cluster bit map info and map in hex mode
        command) dump_exfat -c /dev/block/mmcblk0p1
    -d : dump(extract) file. will work with -f option automatically.
        command) dump_exfat -d [file_path] [partition_path]
    eg)      dump_exfat -d /abc/12345 /dev/block/mmcblk0p1
    -f : travel File path to get dentry info
        command) dump_exfat -f [file_path] [partition_path]
        eg)      If you want to extract file 12345 under directory abc, use below command
                 dump_exfat -f /abc/12345 /dev/block/mmcblk0p1
    -h : print Help usage
        command) dump_exfat -h
    -m : support mount mode
        enter debugfs_exfat prompt and can listup file or change directory like shell.
        it does not use mount system call.
        command) dump_exfat -m /dev/block/mmcblk0p1
        usable command in prompt) ls(or ll), cd, pwd, exit(or q or quit)
    -t : print FAT Table
        command) dump_exfat -t /dev/block/mmcblk0p1
```
