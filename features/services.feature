Feature: services
   For the REST service that return back JSON.

   Scenario: message
      When I go to the /services/message endpoint
      Then I should see the correct message
