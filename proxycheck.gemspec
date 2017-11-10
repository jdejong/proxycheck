$LOAD_PATH.push File.expand_path('../lib', __FILE__)

Gem::Specification.new do |s|
  s.name        = 'proxycheck'
  s.version     = '0.0.2'
  s.date        = '2017-11-09'
  s.summary     = "proxycheck"
  s.description = "This gem is for interacting the proxycheck.io API"
  s.authors     = ["Jonathan De Jong"]
  s.email       = ''
  s.files       =  Dir.glob("{lib,spec}/**/*")
  s.require_paths = ['lib']
  s.homepage    = 'http://rubygems.org/gems/proxycheck'
  s.license     = 'MIT'
end