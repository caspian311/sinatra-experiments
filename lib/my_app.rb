require File.expand_path(File.join(File.dirname(__FILE__), 'services.rb'))

get '/' do
   redirect '/index.html'
end


