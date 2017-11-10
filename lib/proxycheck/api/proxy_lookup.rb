require 'proxycheck/api/util'
module ProxyCheck
    module API
        module ProxyLookup
            include ProxyCheck::API::Util

            API_VERSION = 'v1'

            def proxy_lookup(ip_address, options = {})
                call(ip_address, API_VERSION, :get, options)
            end

        end
    end
end