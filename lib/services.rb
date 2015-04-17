require 'json'
require 'sinatra'
require 'sinatra/json'

require File.expand_path(File.join(File.dirname(__FILE__), 'person'))

get '/services/person/:id' do
   id = Integer(params[:id])
   json Person.find(id)
end

get '/services/person' do
   json Person.all.map { |person| person.name }
end

post '/services/person' do
   request.body.rewind
   data = JSON.parse(request.body.read)
   id = data['id']
   name = data['name']
   Person.new(:id => id, :name => name ).save
   201
end
