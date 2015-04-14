# Genderize

This gem will give you your gender based on your name.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'genderize'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install genderize

## Usage

If you want to use this its quite simple:

    $ include Genderize # To directly use gender method
    $ res = gender "kareena"
    #output {"name"=>"kareena", "gender"=>"female", "probability"=>"1.00", "count"=>5}
    $ res["gender"] # => female

## Contributing

1. Fork it ( https://github.com/dilkhush/genderize/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
