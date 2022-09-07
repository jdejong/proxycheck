require 'proxycheck/api/util'
module ProxyCheck
    module API
        module ProxyLookup
            include ProxyCheck::API::Util

            API_VERSION = 'v2'

            def proxy_lookup(target, options = {})
                call(target, API_VERSION, :get, options)
            end

        end
    end
end