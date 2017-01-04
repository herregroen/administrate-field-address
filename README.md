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

It will a Google Maps input with geolocation autocompletion to your forms using the provided API key. If no location is already set the map will be centered on the provided latitude and longitude.

The field itself is treated as a string, using the PlacesService from Google Maps to render to an actual map.

If you wish to use maps in your own application simply include the following in your application.js:

```javascript
//= require administrate-field-address
```

Load the Google Maps javascript library:

```slim
= javascript_include_tag Administrate::Field::Address.javascript
```

Then include the following in your page:

```slim
.address-show-map data-address=object.address
```
