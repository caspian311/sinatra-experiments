require 'sinatra'
require 'sinatra/json'

require File.expand_path(File.join(File.dirname(__FILE__), 'message'))

get '/services/message' do
   json :greeting => Message.greeting
end
