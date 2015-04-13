require 'capybara'
require 'capybara/cucumber'
require 'rspec'

Capybara.app, _ = Rack::Builder.parse_file(File.expand_path('../../../config.ru', __FILE__))

