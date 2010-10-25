Feature: User calculates tip
  In order to be a better tipper
  As a restaurant patron
  I want to calculate the appropriate tip for my meal

  Scenario: 15% Tip
    Given I have a bill for "80" dollars
    And I want to give a "15" percent tip
    When I calculate my tip
    Then I should get "12" dollars for the tip cost
