require "sinatra"
require "slim"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "./environments"

@config = YAML.load(open("./config.yml"))
WebPay.api_key = @config["secret_key"]

class Purchases < ActiveRecord::Base
end

get "/" do
  slim :index
end
