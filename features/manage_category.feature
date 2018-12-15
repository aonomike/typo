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
    Given that I click on "Categories" enclosed in "subtabs"
    Then I should see the form to create new categories
    When I fill in "Name" with "Business"
    And I press "Save"
    Then I should be on the categories admin page
    And should see "Category was successfully saved"
    And I should see "Business"

  Scenario: Create category fails
    Given that I click on "Categories" enclosed in "subtabs"
    Then I should see the form to create new categories
    When I fill in "Name" with ""
    And I press "Save"
    Then I should be on the categories admin page
    And should see "Category could not be saved"

  Scenario: Edit a category
    Given I am on the categories admin page
    And I click edit of the "Music" category
    Then I should see the form to edit category of name "Music"
    When I fill in "Name" with "Business"
    And I press "Save"
    Then I should be on the categories admin page
    And should see "Category was successfully saved"
    And I should see "Business"

  Scenario: Edit a category fails
    Given I am on the categories admin page
    And I click edit of the "Music" category
    Then I should see the form to edit category of name "Music"
    When I fill in "Name" with ""
    And I press "Save"
    Then I should be on the categories admin page
    And should see "Category could not be saved"
