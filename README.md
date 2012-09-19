# Yard::MethodDecorators

A YARD plugin for the
[method decorators gem](http://rubygems.org/gems/method_decorators).

## Installation

Add this line to your application's Gemfile:

    gem 'yard-method-decorators'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install yard-method-decorators

## Usage

    $ yardoc -p templates_custom \
      -e lib/yard-method-decorators.rb example/example_code.rb

## Roadmap

At present, the documentation is very rudimentary, and may certain cause
problems with other code using the :unary (i.e. "+") operator.

In my ideal world, the Precondition method decorator would be used to generate
much of the params information, instead of relying on the comments. After all
keeping comments up to date sucks far worse than keeping code up to date.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
