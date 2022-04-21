module Whisperer
  class Decrypt
    def initialize(encrypted_value)
      @decrypt = Whisperer.configuration.cipher.decrypt
      @decrypt.key = Whisperer.configuration.key
      @encrypted_value = encrypted_value
    end

    def call
      @decrypt.update(@encrypted_value) + @decrypt.final
    end
  end
end
  