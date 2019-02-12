require 'base64'

# Takes a hex string and encodes it to base64
module EncodeHelper
  def self.hex_to_base64(hex_string)
    byte_string = decode_hex_string(hex_string)
    encode_to_base64(byte_string)
  end

  def self.encode_to_base64(byte_string)
    [byte_string].pack('m0')
  end

  def self.decode_hex_string(hex_string)
    [hex_string].pack('H*')
  end
end
