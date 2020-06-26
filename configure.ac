#                                               -*- Autoconf -*-
# Process this file with autoconf to produce a configure script.

AC_PREREQ([2.69])
AC_INIT(debug.exfat, 0.1.1, intriangle@gmail.com)
AC_CONFIG_SRCDIR([debug/debugfs_exfat.c])
AM_INIT_AUTOMAKE
AC_CONFIG_HEADERS([config.h])

# Checks for programs.
AC_PROG_CC

# Checks for libraries.

# Checks for header files.
AC_CHECK_HEADERS([stdlib.h string.h sys/vfs.h unistd.h])

# Checks for typedefs, structures, and compiler characteristics.

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([memset strchr strerror strstr])

AC_CONFIG_FILES([Makefile
                 debug/Makefile])
AC_OUTPUT
