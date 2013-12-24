gcc nanojpeg2.c -O3 -s -shared -o ../../bin/linux32/libnanojpeg2.so -DNJ_USE_LIBC \
	-std=c99 -Wall -Wextra -pedantic -Werror
