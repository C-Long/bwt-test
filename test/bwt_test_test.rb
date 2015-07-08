require 'minitest/autorun'
require_relative "../lib/bwt_test"

describe BwtTest do
  include BwtTest

  it "encodes correctly" do
    encoded = encode("banana")
    encoded.first.must_equal "nnbaaa"
    encoded.last.must_equal 3
  end

  it "encodes and decodes" do
    decode(encode("banana")).must_equal "banana"
  end
end
