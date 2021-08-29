# File: features/models/user/user_validation_rules.feature
#
Feature: User validation rules

  Scenario: User that does not have an email
    Given a user without email
    Then user is not valid
    And has errors on email

  Scenario: User with existing email
    Given a user with existing email
    Then user is not valid
    And has errors on email about email already taken

  Scenario: User with existing email but different case
    Given a user with existing email but different case
    Then user is not valid
    And has errors on email about email already taken

  Scenario: User with no email confirmation token has their email confirmed
    Given a user with no email confirmation token
    Then user has their email confirmed

  Scenario: User with email confirmation token has their email unconfirmed
    Given a user with email confirmation token
    Then user does not have their email confirmed

  Scenario: User can write only its own Article
    Given a user with their Article
    Then user can write this Article

  Scenario: User cannot write the Article of another user
    Given a user with their Article
    And another user
    Then other user cannot write the Article of the first user
