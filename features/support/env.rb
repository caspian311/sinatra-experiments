require 'capybara'
require 'capybara/cucumber'
require 'rspec'


Capybara.current_driver = :rack_test_json
Capybara.app, _ = Rack::Builder.parse_file(File.expand_path('../../../config.ru', __FILE__))

