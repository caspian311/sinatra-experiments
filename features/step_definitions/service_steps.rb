
When /^I go to the (.*) endpoint$/ do |endpoint|
   header 'Accept', 'application/json'
   get endpoint
   expect(last_response.status).to be 200
end

Given /^I have a person with id (\d+) and name (.+)$/ do |id, name|
   header 'Accept', 'application/json'
   header 'Content-Type', 'application/json'
   post '/services/person', "{ \"id\": #{id}, \"name\": \"#{name}\" }"
   expect(last_response.status).to be 201
end

Then /^I should see the correct message$/ do 
   expected_json = '{ "message": "Hello world!" }'

   verify_json expected_json
end

Then /^I should see the person data$/ do
   expected_json = '{ "id": 123, "name": "Matt" }'

   verify_json expected_json
end

def verify_json(expected_json)
   require 'json'
   expected = JSON.parse(expected_json)
   actual = JSON.parse(last_response.body)
   expect(expected).to eq actual
end

