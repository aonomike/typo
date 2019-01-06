Feature: Merge articles
    As an admin
    So that users can see similar articles merged into one
    I want to be able to merge two articles together

Background:
    Given the blog is set up
    And the following articles exist:
        | title         |
        | Hello world   |
        | Good try      |

    Scenario: Successfuly merge articles
    And I am on the admin edit content page for "Hello world"
    Given I have administration rights
    When I fill in Article ID
    And I click merge
    Then I see the articles have been merged