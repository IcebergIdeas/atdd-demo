Feature:

#  Scenario: Row Clicked
#    Given I am on the welcome page
#
#  Scenario: Correct Row Clicked
#    Given I am on the welcome page


  Scenario: Advertisement Window Appears
    Given I am on the welcome page
    When I select Looking for a Book
    Then I should see the Cucumber and Cheese book message
