Feature: Create an Article

  Background:
    Given a user

  Scenario: User that is not signed in cannot create an Article
    Given I visit the new Article page
    Then I am redirected to the sign in page

  Scenario: User that is signed in can create an Article
    Given I visit the sign in page
    And I sign in
    And I visit the new Article page
    And I fill in the title with "Ruby Hashes"
    And I fill in the text with "Ruby Hashes is like a dictionary"
    When I submit the new Article details
    Then I am being sent to the newly created Article edit page
    And I see a success message that my Article has been successfully created
