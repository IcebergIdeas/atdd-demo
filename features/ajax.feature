Feature: Demonstrate solutions to some common occurring ajax related problems

  Scenario:
    Given I am on the ATDD demo site
    And I am on the welcome page
    When I import the text
    Then I expect the information message to appear

  Scenario: Table handling
    Given I am on the ATDD demo site
    And I am on the welcome page
    When I go to the search page
    And I filter selections by Testing
    Then I expect to see Agile Testing in the list
    And I expect to not see Clean Code in the list