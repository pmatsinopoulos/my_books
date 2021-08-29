Feature: Article Validation Rules

  Scenario: Article without a user
    Given an article without user
    Then article is not valid
    And article has error on user about not being present

  Scenario: Article without title
    Given an article without title
    Then article is not valid
    And article has error on title about not being present

  Scenario: Article without text
    Given an article without text
    Then article is not valid
    And article has error on text about not being present
