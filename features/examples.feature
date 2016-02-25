Feature: Examples of inline tables

  This is to demonstrate to classes the use of inline tables
  and how to automate them

  Scenario: Loading some inline table information
    Given I am on the login page
    And I try the following username password combinations:
      | username | password |
      | 'user'   | 'pass'   |
      | 'user'   | 'zzzz'   |
    When  I submit my login information
    Then I expect the following results:
      | result  |
      | success |
      | fail    |

  Scenario: Loading some inline table information
    Given I am on the login page
    And I try the following username password combinations:
      | username | password |
      | 'user'   | 'pass'   |
      | 'user'   | 'zzzz'   |
    And I try the following user data:
      | city      | state |
      | 'Ottawa'  | 'ON'  |
      | 'Detroit' | 'MI'  |
    When  I submit my login information
    Then I expect the following results:
      | result  |
      | success |
      | fail    |
