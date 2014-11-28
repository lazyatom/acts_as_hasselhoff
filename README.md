# Bayvid Hasselhoff

![The Hoff](http://i.imgur.com/mwWGDL3.jpg)

Your application is now powered by HOFF!!!

CAUTION: with great chest hair comes great responsibility.

## Installation

Add this line to your Rails application's Gemfile:

```ruby
gem 'bayvid_hasselhoff'
```

And then execute:

    $ bundle

## Usage

Once the gem is part of your Rails app it's pretty simple to use.

Just find a model you would like to have Bayvid Hasselhoff save and add:

```ruby
# app/models/post.rb

class Post < ActiveRecord::Base
  acts_as_bayvid_hasselhoff
end
```

Now go save a `Post`.

## Demo
Coming soon...

## The Truth
The hoff idea was stolen from [James Adam](http://lazyatom.com/)'s original [acts_as_hasselhoff plugin](https://github.com/lazyatom/acts_as_hasselhoff). I felt the burning need to make it work with Rails 4 and above so here it is.


## Contributing

1. Fork it ( https://github.com/[my-github-username]/bayvid_hasselhoff/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
