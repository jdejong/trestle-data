# Trestle

This GEM is currently a Work In Progress to provide simple bindings for interacting with the Trestle API's.

## Installation

Add this line to your application's Gemfile:

    gem 'trestle-data'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install trestle-data
    
## Configuration

You can pass configuration options as a block to TrestleData.configure.

    TrestleData.configure do |config|
		config.api_key = "" #
    end


## Usage

### Reverse Phone API

 	TrestleData::Client.new.reverse_lookup(phone_number)