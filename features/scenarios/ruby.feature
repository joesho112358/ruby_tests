Feature: Ruby home page

  Scenario Outline: 1 I check the header links
    Given I visit the Ruby home page
    When I click <page> header
    Then I am on the <page> page
  Examples:
    | page          |
		| downloads     |
		| documentation |
		| libraries     |
		| community     |
		| news          |
		| security      |
		| about ruby    |

  Scenario Outline: 2 I check the footer links
    Given I visit the Ruby home page
    When I click <page> footer
    Then I am on the <page> page
  Examples:
    | page          |
		| downloads     |
		| documentation |
		| libraries     |
		| community     |
		| news          |
		| security      |
		| about ruby    |
	