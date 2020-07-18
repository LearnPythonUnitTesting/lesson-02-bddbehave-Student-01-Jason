Feature: check uppercase

  Scenario Outline: check uppercase
    Given I have a word <a>
    When I input a word <b>
    Then the input word is the capital of target word

    Examples: check uppercase
      | a      | b      |
      | apple  | APPLE  |
      | banana | BANANA |
      | orange | ORANGE |