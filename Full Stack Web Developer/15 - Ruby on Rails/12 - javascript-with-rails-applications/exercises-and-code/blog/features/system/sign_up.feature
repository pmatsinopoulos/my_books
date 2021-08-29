# File: features/system/sign_up.feature
#
Feature: Sign Up

  Scenario: Sign Up Happy Path
    Given I visit the Web application
    And I decide to sign up
    When I fill in my email and password
    And I accept the terms of service
    And I submit my details
    Then I can see a confirmation message that I have signed up successfully

  Scenario: Sign Up with Country Of Origin
    Given I visit the Web application
    And I decide to sign up
    When I fill in my email and password
    And I fill in my country of origin
    And I accept the terms of service
    And I submit my details
    Then I can see a confirmation message that I have signed up successfully
    And Last user created has the correct country of origin
