require 'proxycheck/api/util'
require 'proxycheck/api/proxy_lookup'

module ProxyCheck

	class Client
		include ProxyCheck::Configurable
		include ProxyCheck::API::ProxyLookup

    	def initialize(options={})
				ProxyCheck::Configurable.keys.each do |key|
        		instance_variable_set(:"@#{key}", options[key] || ProxyCheck.instance_variable_get(:"@#{key}"))
      		end
    	end
	end
end