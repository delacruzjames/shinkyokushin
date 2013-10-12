Feature: Create Dojo
  In order to allow students to sign up under me
  As an instructor
  I want to be able to create a dojo

  Scenario: Create a dojo with valid data
    Given I am logged in as an instructor
    And I am on the dashboard page
    When I click on "Add dojo"
    And I fill in the form with valid dojo data
    Then I should be back on the dashboard page
    And I should see "Dojo created successfully"
