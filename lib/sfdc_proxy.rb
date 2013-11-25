require 'sinatra/base'
require 'faraday'
require 'json'
require 'open-uri'
require 'yaml'

class SalesforceProxy < Sinatra::Base
  def self.proxy(url, &block)
    get(url,&block)
    put(url,&block)
    delete(url,&block)
    patch(url,&block)
    post(url,&block)
  end

  proxy '/*' do
    #puts request.env.to_yaml
    body = request.body.read
    query_string = request.query_string
    sf_endpoint = request.env['HTTP_X_SALESFORCEPROXY_ENDPOINT'] || 'http://login.salesforce.com/services/oauth2/token'
    auth_header = request.env['HTTP_AUTHORIZATION']
    content_type = (sf_endpoint.include?('oauth2') && 'application/x-www-form-urlencoded') || 'application/json'
    http_method = request.env['REQUEST_METHOD']
    result = Faraday.send http_method.downcase do |req|
      req.url "#{sf_endpoint}?#{query_string}"
      req.headers["Authorization"] = auth_header if auth_header
      req.headers['Content-Type'] = content_type if content_type
      req.body = body if body
    end
    #puts result.inspect
    result.body
  end

  #run! if app_file == $0
end
