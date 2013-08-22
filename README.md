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
SlikIO.SECRET_API_KEY = 'YOUR_API_KEY'
```

### Pushing data to collections
You can use our API to push data into your collections using:
```ruby
Slik.IO.sendData(COLLECTION_ID, data)
```
Example:
```ruby
SlikIO.sendData("3841841041hc029281", {userId: "123123", email: "user@email.com", action: "planPurchased", cost: 150.0})
```