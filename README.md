# ProxyCheck.io

This GEM provides simple bindings for interacting with the ProxyCheck.io's API. This current branch is to support version 2 of the proxycheck API.

If you wish to use ProxyCheck v1, check the 1.0 branch.

## Installation

Add this line to your application's Gemfile, specify gem version 2:

    gem 'proxycheck', ">=2.0.0", "<3.0.0"

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

A full list of supported can be found at https://proxycheck.io/api/#query_flags for inclusion in the parameters hash.