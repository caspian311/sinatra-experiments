require 'sinatra'
require './lib/my_app'

set :root, File.dirname(__FILE__)
set :environment, :development
set :static, true
set :public_folder, Proc.new { File.join(root, "public") }
set :views, Proc.new { File.join(root, "templates") }

run Sinatra::Application
