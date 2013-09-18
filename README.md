# Slik.IO

This is a ruby gem for Slik.IO - http://slik.io

## Installation

Add this line to your application's Gemfile:

    gem 'slikio'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slikio

## Usage

First, register to http://slik.io
After you've done that, get the secret api key
```ruby
require 'slikio'
.
.
SlikIO.API_PRIVATE_KEY = 'YOUR_API_PRIVATE_KEY'
```

For rails you can set the api key from an initializer (e.g. config/initializers/slikio.rb)
```ruby
# config/initializers/slikio.rb
SlikIO.API_PRIVATE_KEY = 'YOUR_API_PRIVATE_KEY'
```
### Pushing data to collections
You can use our API to push data into your collections using:
```ruby
SlikIO.sendData(COLLECTION_ID, data)
```
Example:
```ruby
SlikIO.sendData("col_3841841041hc029281", {userId: "123123", email: "user@email.com", action: "planPurchased", cost: 150.0})
```
