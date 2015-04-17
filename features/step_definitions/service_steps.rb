
When /^I go to the (.*) endpoint$/ do |endpoint|
   visit endpoint
end

Given /^I have a person with id (\d+) and name (.+)$/ do |id, name|
   post '/services/person', "{ 'id': #{id}, 'name': '#{name}' }"
end

Then /^I should see the correct message$/ do 
   expected_json = '{ "message": "Hello world!" }'

   verify_json expected_json
end

Then /^I should see the person data$/ do
   expected_json = '{ "name": "Matt" }'

   verify_json expected_json
end

def verify_json(expected_json)
   require 'json'
   expected = JSON.parse(expected_json)
   actual = JSON.parse(page.body)
   expect(expected).to eq actual
end

