Feature: Ruby home page

  Scenario: 1 I check the header links
    Given I visit the Ruby home page
    When I click documentation header
    Then I am on the documentation page