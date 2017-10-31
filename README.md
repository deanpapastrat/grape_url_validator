# GrapeUrlValidator

Adds support for basic URL validation in your Grape API parameters.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'grape_url_validator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install grape_url_validator

## Usage

```ruby
class Authors < Grape::API
  resource :authors do

    desc 'Update an author'
    params do
      requires :id, type: Integer, desc: 'ID of the author'
      optional :name, type: String, desc: 'Name of the author'
      optional :homepage, type: String, url: true, desc: 'URL to the homepage of the author'
    end
    patch ':id' do
      # Implementation code goes here.
    end
  end

end
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/deanpapastrat/grape_url_validator. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the GrapeUrlValidator project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/grape_url_validator/blob/master/CODE_OF_CONDUCT.md).
