# Dependency Injection for Rails (NOT WORKING FOR NOW)

`DependencyInjectionRails` adds a helper method, called `container`, to access to your ruby
[dependency injection container](https://github.com/kdisneur/dependency_injection-ruby)

## Installation

Just add the gem to your Gemfile

```ruby
gem 'dependency_injection-rails'
```

Or simply install it using rubygems:

```ruby
gem install dependency_injection-rails
```

## Usage

In a classic application simply require the helper, and start using it:

```ruby
class ProductsController < ApplicationController
  def create
    @trendings = container.get('awesome_service').find_trending
  end

  # The rest of your controller code goes here...
end
```

### Configuration path

By default it will try to load `config/services.yml` configuration file, but if
your configuration file is stored in another place, you can easily change it in
an initializer:

```ruby
DependencyInjectionRails.services_path = Rails.root.join('config'. 'anther_name.yml')
```
