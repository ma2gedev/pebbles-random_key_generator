require "pebbles/random_key_generator/version"
require "openssl"

module Pebbles
  module RandomKeyGenerator
    def self.generate(length)
      length = length.to_i if length.instance_of?(String)
      [OpenSSL::Random.random_bytes(length)].pack('m').gsub(/\W/, '')[0, length]
    end
  end
end
