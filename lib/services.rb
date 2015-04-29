require 'json'
require 'sinatra'
require 'sinatra/json'

require File.expand_path(File.join(File.dirname(__FILE__), 'person'))

get '/services/person/:id' do
   content_type :json
   id = Integer(params[:id])
   Person.find(id).to_json
end

get '/services/person' do
   json Person.all.map { |person| person.name }
end

post '/services/person' do
   begin
      request.body.rewind
      data = JSON.parse(request.body.read)
      id = data["id"]
      name = data["name"]
      Person.new(:id => id, :name => name ).save
      puts "created person: #{id}:#{name}"
      201
   rescue Exception => e
      puts ">>>>>>>>>>>>>>>>>>>>"
      puts e
      500
   end
end
