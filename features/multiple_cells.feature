Feature: Evolving a grid with some cells in it
  In order to create a functioning rules engine
  As a programmer of Conway's Game of Life
  I can evolve a multiple cell grid

  Scenario: Sparse grid with nobody staying alive
    Given the following setup
      | . | . | . | . | . |
      | . | x | . | x | . |
      | . | . | . | . | . |
      | . | x | . | x | . |
      | . | . | . | . | . |
    When the game evolves
    Then the board should look like this
      | . | . | . | . | . |
      | . | . | . | . | . |
      | . | . | . | . | . |
      | . | . | . | . | . |
      | . | . | . | . | . |

  Scenario: Over-crowded grid
    Given the following setup
      | . | . | . | . | . |
      | . | x | x | x | . |
      | . | x | x | x | . |
      | . | x | x | x | . |
      | . | . | . | . | . |
    When the game evolves
    Then the board should look like this
      | . | . | x | . | . |
      | . | x | . | x | . |
      | x | . | . | . | x |
      | . | x | . | x | . |
      | . | . | x | . | . |

  Scenario: Multiple dead cells coming to life
    Given the following setup
      | . | . | . | . | . |
      | . | . | . | . | . |
      | . | x | x | x | . |
      | . | . | . | . | . |
      | . | . | . | . | . |
    When the game evolves
    Then the board should look like this
      | . | . | . | . | . |
      | . | . | x | . | . |
      | . | . | x | . | . |
      | . | . | x | . | . |
      | . | . | . | . | . |
