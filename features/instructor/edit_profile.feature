Feature: Instructor updates profile
  In order to complete the basic info entered by the admin in creating my profile
  As an instructor
  I want to update my profile

  Scenario: Update profile with valid data
    Given I am logged in as an instructor
    And I am on the dashboard page
    When I click on "Edit profile"
    And I fill in the form with valid instructor profile data
    Then I should be back on the dashboard page
    Then I should see "You updated your account successfully."
