# What is SimpleLike?

SimpleLike is a tiny gem that allows you to add simple 'like' button functionality to existing models.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple_like'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple_like

## Usage

To make a model likeable, simply extend/include the SimpleLike module.

```ruby
class Article
  extend SimpleLike::Target
end
```

...and to enable a user to have the ability to like.

```ruby
class User
  extend SimpleLike::User
end
```

### Methods

There are a few handy methods available to you.

```ruby
article = Article.first

# Like an object
current_user.like! article
# Check whether user has already liked object
current_user.like? article
# Destroy an existing like
current_user.destroy_like! article
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
