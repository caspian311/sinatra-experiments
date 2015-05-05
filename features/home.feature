
Feature: Home
   Functionality for the home page

   @javascript
   Scenario: Greeting message
      Given I have a person with id 123 and name Matt
      When I go to the home page
      Then I should see "Hello, Matt!"

