require 'base64'

# Takes a hex string and encodes it to base64
module Base64Encoder
  def self.encode(hex_string)
    [[hex_string].pack('H*')].pack('m0')
  end
end
