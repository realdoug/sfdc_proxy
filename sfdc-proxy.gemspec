Gem::Specification.new do |s|
  s.name = 'sfdc_proxy'
  s.version = '0.0.4'
  s.summary = "A simple http proxy to the saleforce apis for use in rack applications"
  s.description = "A simple http proxy to the salesforce apis for use in rack applications"
  s.authors = ["Doug Friedman"]
  s.email = "doug@tryo.io"
  s.files = ["lib/sfdc_proxy.rb"]
  s.homepage = 'http://rubygems.org/gems/sfdc_proxy'
  s.license = 'MIT'

  s.add_runtime_dependency 'faraday'
  s.add_runtime_dependency 'sinatra'
end
