require 'bundler'
Bundler.require
require "sinatra/reloader" if development?


get "/" do
  @config = YAML.load(open("./config.yml"))
  slim :index
end
