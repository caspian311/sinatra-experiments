require File.expand_path(File.join(File.dirname(__FILE__), 'message'))

get '/' do
   redirect '/index.html'
end

get '/message' do
   Message.new.greeting
end

