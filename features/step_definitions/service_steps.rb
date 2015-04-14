
When(/^I go to the (.*) endpoint$/) do |endpoint|
   visit endpoint
end

Then(/^I should see the correct message$/) do 
   expected_json = '{ "message": "Hello world!" }'

   require 'json'
   expected = JSON.parse(expected_json)
   actual = JSON.parse(page.body)
   expect(expected).to eq actual
end
