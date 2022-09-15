# Whisperer

With `whisperer it is possible to encrypt data that is sent by URL

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'whisperer'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install whisperer

## settings`

You need some settings to use whisperer

```
 Whisperer.configure do |config|
  config.key = 'very-secret-key'
  config.cipher = OpenSSL::Cipher.new('aes-256-cbc') 
 end
 ```

## Usage

to encrypt 

```
Whisperer.encrypt('my favorite-phrase')
```

to decrypt 

```
Whisperer.decrypt('encrypted-phrase')
```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/GustavoDuarteM/whisperer. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/GustavoDuarteM/whisperer/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Whisperer project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/whisperer/blob/master/CODE_OF_CONDUCT.md).
