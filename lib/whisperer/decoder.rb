module Whisperer
  class Decoder
    def initialize(encrypted_value)
      @encrypted_value = encrypted_value
    end

    def call
      Base64.decode64(URI.decode_www_form_component(@encrypted_value))
    end
  end
end
