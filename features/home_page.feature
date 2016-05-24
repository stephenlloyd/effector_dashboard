Feature: Home page

  Scenario: No one is signed in
    Given I am on the homepage
    Then I should see "Log in"

  Scenario: Normal User Signed in without jobs
    Given I am signed in as "user"
    And I am on the homepage
    Then I should see "All Jobs complete"
