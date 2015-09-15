Feature: I can search for Ruby

  Scenario: 1 I can search for Ruby
    Given I am on Google
    When I search for ruby
    Then I can see a ruby download link
	
  Scenario: 2 I can search for Ruby
    Given I have searched for ruby
	When I click the Ruby link
    Then I am on the Ruby home page