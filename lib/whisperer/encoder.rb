module Whisperer
  class Encoder
    def initialize(encrypted_value)
      @encrypted_value = encrypted_value
    end

    def call
      URI.encode_www_form_component(Base64.encode64(@encrypted_value))
    end
  end
end
