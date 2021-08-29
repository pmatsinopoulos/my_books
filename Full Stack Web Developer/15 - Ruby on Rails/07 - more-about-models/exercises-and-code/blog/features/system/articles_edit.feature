Feature: Edit an Article

  Background:
    Given a user
    And an Article that belongs to this user

  Scenario: User that is not signed in cannot edit an Article
    Given I visit the edit Article page
    Then I am redirected to the sign in page

  Scenario: User that is signed in cannot edit the Article of another User
    Given I visit the sign in page
    And I sign in
    When I visit the edit page of the Article of another user
    Then I am redirected to the root page of the site

  Scenario: User can edit their own Article
    Given I visit the sign in page
    And I sign in
    When I visit the edit page of my Article
    Then I see the title holding the value of the title of my Article
    And I see the text holding the value of the text of my Article
    When I update the title to be "Foo Bar"
    And I update the text to be "Foo Bar Text"
    And I submit the new details of my Article
    Then I see a success message that my article has been updated successfully
    And I am on the edit page of my Article
    And I can see that my Article has title "Foo Bar"
    And I can see that my Article has text "Foo Bar Text"
