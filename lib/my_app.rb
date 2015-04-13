require 'rubygems'
require 'sinatra/base'
require 'message'

class MyApp < Sinatra::Base
   get '/' do
      Message.new.greeting
   end
end

