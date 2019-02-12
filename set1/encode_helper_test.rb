require 'test/unit'
require_relative 'encode_helper'

class Base64Test < Test::Unit::TestCase
  def test_hex_to_base64
    assert_equal(
      'SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t',
      EncodeHelper.hex_to_base64('49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d')
    )
  end

  def test_decode_hex_string
    assert_equal(
      'I\'m killing your brain like a poisonous mushroom',
      EncodeHelper.decode_hex_string('49276d206b696c6c696e6720796f757220627261696e206c696b65206120706f69736f6e6f7573206d757368726f6f6d')
    )
  end

  def test_encode_to_base64
    assert_equal(
      'SSdtIGtpbGxpbmcgeW91ciBicmFpbiBsaWtlIGEgcG9pc29ub3VzIG11c2hyb29t',
      EncodeHelper.encode_to_base64('I\'m killing your brain like a poisonous mushroom')
    )
  end
end

