Feature: Sign In Validation Rules

  Scenario: Sign in without email
    Given sign in does not have email
    Then sign in is not valid
    And sign in has errors on email about not being present

  Scenario: Sign in without password
    Given sign in does not have password
    Then sign in is not valid
    And sign in has errors on password about not being present

  Scenario: Sign in with email and password that correspond to user credentials
    Given a user
    And sign in has email and password corresponding to user credentials
    Then sign in authenticates user

  Scenario: Sign in with email and password that does not correspond to user credentials
    Given a user
    And sign in has the email of user but other password
    Then sign in does not authenticate user
    And sign in has errors on email and password for wrong credentials

