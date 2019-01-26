Feature: Merge articles
    As an admin
    So that users can see similar articles merged into one
    I want to be able to merge two articles together

Background:
    Given the blog is set up
    And the following users exist
        | login             | password          | email                     | profile       | state  |
        | publisher         | pusblisher        | publisher@email.com       | publisher     | active |
        | contributor       | contributor       | contributor@email.com     | contributor   | active |
        | administrator     | administrator     | administrator@email.com   | admin         | active |
    And the following articles exist:
        | title         | author        |
        | Hello world   | publisher     |
        | Good try      | contributor   |

    Scenario: Successfuly merge articles
    Given I am logged into the admin panel as "administrator" with password "administrator"
    And I am on the admin edit content page for "Hello world"
    When I fill in the following:
    | Article ID | 1 |
    And I press "Merge"
    Then I should see "the articles have been merged"

    Scenario: Not successfuly merge articles
    Given 'average_joe' is on the edit content page for "Hello world"
    