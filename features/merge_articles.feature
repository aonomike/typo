Feature: Merge articles
    As an admin
    So that users can see similar articles merged into one
    I want to be able to merge two articles together

Background:
    Given the blog is set up
    And the following users exist
        | login             | password          | email                     | profile       | state  |
        | publisher         | publisher        | publisher@email.com       | publisher     | active |
        | contributor       | contributor       | contributor@email.com     | contributor   | active |
        | administrator     | administrator     | administrator@email.com   | admin         | active |
    And the following articles exist:
        | title         | author        | body          |
        | Hi there      | publisher     | Hi there      |
        | Good try      | contributor   | Good try      |

    Scenario: Successfuly merge articles
    Given I am logged into the admin panel as "administrator" with password "administrator"
    And I am on the admin edit content page for "Hi there"
    When I fill in "Article ID" with id of "Good try"
    And I press "Merge"
    Then I should see "Article was successfully created"
    When I follow "Hi there"
    Then I should see "Hi there"
    And I should see "Good try"

    Scenario: Contributor cannot merge articles
    Given I am logged into the admin panel as "publisher" with password "publisher"
    And I am on the admin edit content page for "Hi there"
    Then I should not see button "Merge"
    And I should not see field with id "article-id"
    And I should not see "Article ID"
    