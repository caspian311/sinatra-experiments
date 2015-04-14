require 'sinatra'
require 'sinatra/json'

require File.expand_path(File.join(File.dirname(__FILE__), 'message'))
require File.expand_path(File.join(File.dirname(__FILE__), 'person'))

get '/services/message' do
   json :message => Message.greeting
end

get '/services/person/:id' do
   id = params[:id]
   json :name => Person.find(id).name
end
