require 'spec_helper'
require 'digest/crc32_mpeg_by_hex'

describe Digest::CRC32MpegByHex do
  let(:string)   { '02020501010102001455aa55aa55aa55aa55aa55aa55aa55aa55aa55aa' }
  let(:expected) { '8b5d2fc2' }

  it 'should calculate a checksum for text' do
    expect(described_class.hexdigest(string)).to be == expected
  end

  it 'should provide direct access to the checksum value' do
    crc = subject
    crc << string
    expect(crc.checksum).to be == expected.to_i(16)
  end
end
