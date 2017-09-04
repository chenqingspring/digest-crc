## Fork from [digest-crc](https://github.com/postmodern/digest-crc) 

Add `Digest::CRC32MpegByHex` module for calculating crc32mpeg by hex input

## New Usage

Calculate a CRC32 Mpeg by hex:

```ruby
require 'digest/crc32_mpeg_by_hex'

Digest::CRC32MpegByHex.hexdigest('0100010201050102')
# => "badbdb6f"
```
Double check results by http://crccalc.com/?crc=0100010201050102&method=crc32&datatype=hex

## Other CRC algorithms Supporting

To making other algorithm support hex input, just change `update` method, replace reading `each_byte` of string to `scan` hex stream in every 8 bit (1 byte)(2 hex)
