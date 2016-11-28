# Administrate::Field::Address

An address field for Administrate.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'administrate-field-address', git: 'git@git.noxqsapp.nl:gems/administrate-field-address.git'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install administrate-field-address

## Usage

Add the following to one of your initializers:

```ruby
Administrate::Field::Address.api_key   = "YOUR_API_KEY"
Administrate::Field::Address.latitude  = "51.916654"
Administrate::Field::Address.longitude = "5.860007"
```
