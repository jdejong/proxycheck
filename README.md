# ProxyCheck.io

This GEM is currently a Work In Progress to provide simple bindings for interacting with the ProxyCheck.io's API. We will continue to add features to this GEM over the next couple of weeks and please assume there might be breaking changes in the future. We will do our best to keep them at a minimum and call out anything of note.


## Installation

Add this line to your application's Gemfile:

    gem 'proxycheck'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install proxycheck
    
## Configuration

You can pass configuration options as a block to ProxyCheck.configure.

    ProxyCheck.configure do |config|
		config.api_key = "" #optional API Key
    end


## Usage

### Proxy API
The Proxy API returns meta information about an IP Address including whether the address is a known proxy server, vpn or other information like ASN or owner.

 	ProxyCheck::Client.new.proxy_lookup(ip_address)

   Optional parameters can be added to the method to request what data you want returned from the api
    
    {
        vpn: 1, #
        asn: 1, #
        node: 1, #
        time: 1, #
        tag: "Category of request" #   
    }

