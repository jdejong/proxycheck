require 'proxycheck/configurable'
require 'proxycheck/client'

module ProxyCheck

	class << self
		 include ProxyCheck::Configurable
	end

	# def configure
 #    	yield config
 #    end

 #    def config
 #      	@config ||= Configuration.new
 #    end


 #    def reset_config
 #      	@config = nil
 #    end
end