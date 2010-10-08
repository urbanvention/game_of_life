Feature: Evolving a still cell structure
  In order to create a functioning rules engine
  As a programmer implementing the game of life
  I want a still cell structure to remain unchanged after it evolves

  Scenario: A block doesn't change
    Given the following setup
      | . | . | . | . |
      | . | x | x | . |
      | . | x | x | . |
      | . | . | . | . |
    When the game evolves
    Then the board should look like this
      | . | . | . | . |
      | . | x | x | . |
      | . | x | x | . |
      | . | . | . | . |

  Scenario: A behive doesn't change
    Given the following setup
      | . | . | . | . | . | . |
      | . | . | x | x | . | . |
      | . | x | . | . | x | . |
      | . | . | x | x | . | . |
      | . | . | . | . | . | . |
    When the game evolves
    Then the board should look like this
      | . | . | . | . | . | . |
      | . | . | x | x | . | . |
      | . | x | . | . | x | . |
      | . | . | x | x | . | . |
      | . | . | . | . | . | . |

  Scenario: A loaf doesn't change
    Given the following setup
      | . | . | . | . | . | . |
      | . | . | x | x | . | . |
      | . | x | . | . | x | . |
      | . | . | x | . | x | . |
      | . | . | . | x | . | . |
      | . | . | . | . | . | . |
    When the game evolves
    Then the board should look like this
      | . | . | . | . | . | . |
      | . | . | x | x | . | . |
      | . | x | . | . | x | . |
      | . | . | x | . | x | . |
      | . | . | . | x | . | . |
      | . | . | . | . | . | . |

  Scenario: A boat doesn't change
    Given the following setup
      | . | . | . | . | . |
      | . | x | x | . | . |
      | . | x | . | x | . |
      | . | . | x | . | . |
      | . | . | . | . | . |
    When the game evolves
    Then the board should look like this
      | . | . | . | . | . |
      | . | x | x | . | . |
      | . | x | . | x | . |
      | . | . | x | . | . |
      | . | . | . | . | . |
