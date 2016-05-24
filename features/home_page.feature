Feature: Home page

  Scenario: No one is signed in
    Given I am on the homepage
    Then I should see "Log in"

  Scenario: Normal User Signed in without jobs
    Given I am signed in as "user"
    And I am on the homepage
    Then I should see "All Jobs complete"

  Scenario: Normal User Signed in with a jobs
    Given I am signed in as "user"
    And I have an "uncomplete" job
    When I am on the homepage
    Then I should see "uncomplete"

  Scenario: Normal User Signed in with a jobs
    Given I am signed in as "user"
    And I don't have an "uncomplete" job
    When I am on the homepage
    Then I should see not see "uncomplete"
