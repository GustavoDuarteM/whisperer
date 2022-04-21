require 'whisperer/version'
require 'openssl'
require 'uri'
require 'base64'
require 'singleton'

Dir["#{File.dirname(__FILE__)}/whisperer/**/*.rb"].sort.each { |file| require file }

module Whisperer
  class << self

    attr_accessor :configuration

    def configure
      self.configuration ||= Whisperer::Configuration.new
      yield(configuration)
    end

    def encrypt(value)
      encrypted_value_value = Whisperer::Encrypt.new(value).call
      Whisperer::Encoder.new(encrypted_value_value).call
    end

    def decrypt(value)
      decoded_value = Whisperer::Decoder.new(value).call
      Whisperer::Decrypt.new(decoded_value).call
    end
  end
end
