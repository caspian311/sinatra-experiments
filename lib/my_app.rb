require File.expand_path(File.join(File.dirname(__FILE__), './message'))

get '/' do
   Message.new.greeting
end

