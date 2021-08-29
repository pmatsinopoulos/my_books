# File: features/system/sign_up.feature
#
Feature: Sign Up

  Scenario: Sign Up Happy Path
    Given I visit the Web application
    And I decide to sign up
    When I fill in my email and password
    And I submit my details
    Then I can see a confirmation message that I have signed up successfully
