require 'sinatra'
require "./lib/my_app"

set :environment, :development

run Sinatra::Application
