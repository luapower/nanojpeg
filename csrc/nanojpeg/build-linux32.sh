gcc $CFLAGS nanojpeg2.c -shared -o ../../bin/linux32/libnanojpeg2.so -DNJ_USE_LIBC \
	-std=c99 -Wall -Wextra -pedantic -Werror
