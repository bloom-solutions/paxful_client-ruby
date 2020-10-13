# PaxfulClient

An API wrapper for Paxful.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'paxful_client'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install paxful_client

## Usage

```ruby
client = PaxfulClient.new(host: "host", key: "key", secret: "secret")

# Get balance
response = client.get_balance
wallet = response.wallet
wallet.balance

# Get completed trades
response = client.get_completed_trades
order_book = response.order_book
order_book.trades
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/MarkFChavez/paxful_client-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/MarkFChavez/paxful_client-ruby/blob/master/CODE_OF_CONDUCT.md).


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the PaxfulClient project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/MarkFChavez/paxful_client-ruby/blob/master/CODE_OF_CONDUCT.md).
