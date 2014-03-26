gcc -arch i386 -O2 nanojpeg2.c -shared -install_name @loader_path/libnanojpeg.dylib -o ../../bin/osx32/libnanojpeg2.dylib -DNJ_USE_LIBC -std=c99 -Wall -Wextra -pedantic -Werror
