Feature: services
   For the REST service that return back JSON.

   Scenario: fetch a person by id
      Given I have a person with id 123 and name Matt
      When I go to the /services/person/123 endpoint
      Then I should see the person data
