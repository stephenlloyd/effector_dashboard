Feature: Jobs features

  Scenario: An admin can create a job
    Given I am signed in as "admin"
    And I visit "/jobs/new"
    Then I should see "New Job"

  Scenario: A non admin can't create new jobs
      Given I am signed in as "user"
      And I visit "/jobs/new"
      Then I should be on "/"
