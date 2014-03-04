Feature: Have a search engine
  As someone with questions
  I want a search engine
  So that I can have a way to get answers

  Scenario: Do a search
    Given I am at a capybara page
    When I search for "helper"
    Then I see "SpecHelper" as a result
