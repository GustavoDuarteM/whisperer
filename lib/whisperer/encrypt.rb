module Whisperer
  class Encrypt
    def initialize(plain_value)
      @encrypt = Whisperer.configuration.cipher.encrypt
      @encrypt.key = Whisperer.configuration.key
      @plain_value = plain_value
    end

    def call
      @encrypt.update(@plain_value) + @encrypt.final
    end
  end
end
