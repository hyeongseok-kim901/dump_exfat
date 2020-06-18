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
Usage : ./dump_exfat [-bcdfht] [file_path]
    -b : print Boot sector in hex mode
        command) dump_exfat -b
    -c : print Cluster bit map info and map in hex mode
        command) dump_exfat -c
    -d : dump(extract) file. will work with -f option automatically.
        command) dump_exfat -d [file_path]
        eg)      dump_exfat -d /abc/12345
    -f : travel File path to get dentry info
        command) dump_exfat -f [file_path]
        eg)      If you want to extract file 12345 under directory abc, use below command
                 dump_exfat -f /abc/12345
    -h : print Help usage
        command) dump_exfat -h
    -t : print FAT Table
        command) dump_exfat -t
```
