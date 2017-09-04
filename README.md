### Fork from [digest-crc](https://github.com/postmodern/digest-crc) 

Add `crc32_mpeg_by_hex.rb` for calculating crc32mpeg by hex input

Double check results by http://crccalc.com

## New Usage

Calculate a CRC32 Mpeg by hex:

```ruby
require 'digest/crc32_mpeg_by_hex'

Digest::CRC32MpegByHex.hexdigest('0100010201050102')
# => "badbdb6f"
```
