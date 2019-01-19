Feature: Merge articles
    As an admin
    So that users can see similar articles merged into one
    I want to be able to merge two articles together

Background:
    Given the blog is set up
    And the following users exist
        | login         | password      | email                 | profile       |
        | publisher     | pusblisher    | publisher@email.com   | publisher     |
        | contributor   | contributor   | contributor@email.com | contributor   |
    And the following articles exist:
        | title         | author        |
        | Hello world   | publisher     |
        | Good try      | contributor   |

    Scenario: Successfuly merge articles
    And I am on the admin edit content page for "Hello world"
    Given I have administration rights
    When I fill in Article ID
    And I click merge
    Then I see the articles have been merged

    Scenario: Not successfuly merge articles
    Given 'average_joe' is on the edit content page for "Hello world"
    