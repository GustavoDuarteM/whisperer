module Whisperer
  class Configuration
    attr_accessor :key, :cipher

    def initialize
      @key = key
      @cipher = cipher || OpenSSL::Cipher.new('aes-256-cbc')
    end
  end
end