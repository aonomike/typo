Feature: Manage categories
  As an admin
  In order to manage categories
  I want to create a and edit categories

  Background:
   Given the blog is set up
   And I am logged into the admin panel
   Then I should be on the admin page
   And the following categories exist:
     | name    |
     | Music   |
     | Travel  |

  Scenario: Create category
    Given that I click on "Categories"
    Then I should see the form to create new categories
    When I fill in Name with "Business"
    And I click save
    Then I should be on the categories admin page
    And should see category has been created
    And I should see Business in the Title column

  Scenario: Edit a category
    Given I click edit of the "music" category
    When I am on the home page
    Then I should not be on the edit page of "music" category
