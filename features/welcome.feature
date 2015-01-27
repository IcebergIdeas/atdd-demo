Feature:

  Scenario: Row Clicked
    Given I am on the welcome page
    When I select the Rangers
    Then I can see the Rangers stats

  Scenario: Correct Row Clicked
    Given I am on the welcome page
    When I select the Kings
    Then I don't see the Rangers stats

    