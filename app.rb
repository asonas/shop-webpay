#require 'bundler'
#Bundler.require
require 'sinatra'
require "sinatra/reloader" if development?
require 'sinatra/activerecord'
require "./environments"

class Purchases < ActiveRecord::Base
end

get "/" do
  @config = YAML.load(open("./config.yml"))
  slim :index
end
