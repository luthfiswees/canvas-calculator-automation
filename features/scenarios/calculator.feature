Feature: Calculator Scenario

  Scenario Outline: Calculate Substraction and Division
    Given Open browser and start application
    When I input number "<input1>"
    And I choose "<operation>" operation
    And I input number "<input2>"
    And I see the result
    And Result should be "<result>"
    Then close the browser

  Examples:
    | input1 | input2 | result | operation |
    | 15     | 6      | 9      | substract |
    | 7      | 8      | -1     | substract |
    | 3.5    | 1.7    | 1.8    | substract |
    | 1.7    | 3.5    | -1.8   | substract |
    | 15     | 3      | 5      | divide    |
    | 15     | 2      | 7.5    | divide    |
    | 15     | 0      | error  | divide    |