require 'net/http'
require 'json'

module ProxyCheck
	module API
		module Util

			include ProxyCheck::Configurable

			ROOT_URL = 'https://proxycheck.io'

			def call(path, api_version = "v1", type = :get, params = {})

						params.merge!({api_key: api_key}) if !api_key.blank?

       			uri = URI.parse(build_url(path, api_version))
		        uri.query = URI.encode_www_form(params)

		        http = Net::HTTP.new(uri.host, uri.port)

		        http.use_ssl = true if uri.scheme.upcase == "HTTPS"
						http.verify_mode = OpenSSL::SSL::VERIFY_NONE if uri.scheme.upcase == "HTTPS"
		        
		        case type
		        when :get
		          request = Net::HTTP::Get.new(uri.request_uri)
		        when :post
		          request = Net::HTTP::Post.new(uri.request_uri)
		        end

        		response = http.request(request)
        		JSON.parse(response.body)
			end

			def build_url(path, api_version)
				"#{ File.join(ROOT_URL, api_version, path) }"
			end

		end
	end
end