---
project: nanojpeg
tagline: nanojpeg Lua+ffi binding
---

v1.0 | NanoJPEG 1.3 modified | LuaJIT 2

## `local nanojpeg = require'nanojpeg'`

A ffi binding of [NanoJPEG], a very small JPEG decoder suitable for embedded applications.

## Limitations

  * no support for arithmetic coding (rarely used)
  * no support for progressive jpeg (not-so-rarely used)
  * slow (compared to [libjpeg-turbo])
  * no option to only read the headers

## `nanojpeg.load(t) -> image`

Read and decode a JPEG image.

  * `t` is a table specifying:
    * where to read the data from (one of the following):
      * `path`: read data from a file given its filename
      * `string`: read data from a string
      * `cdata`, `size`: read data from a buffer

The returned image object is a table with the fields:

    * `data`, `size`, `format`, `stride`, `w`, `h`: image format, data and dimensions.
       * depending on the input file, the format can be either `rgb8` or `g8`,
		    that is 24bit RGB or 8bit gray; use [bitmap] to convert to other formats.

----
See also: [libjpeg], [imagefile].

[NanoJPEG]:       http://keyj.emphy.de/nanojpeg/
[libjpeg-turbo]:  libjpeg.html
[bitmap]:         bitmap.html
