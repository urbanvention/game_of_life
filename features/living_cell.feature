Feature: Evolving a living cell
  In order to create a functioning rules engine
  As a programmer implementing the game of life
  I want a living cell to evolve

  Scenario: A living cell without living neighbors dies
    Given the following setup
      | . | . | . |
      | . | x | . |
      | . | . | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A living cell with one living neighbor dies
    Given the following setup
     | . | x | . |
     | . | x | . |
     | . | . | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A living cell with two living neighbors stays alive
    Given the following setup
     | . | x | x |
     | . | x | . |
     | . | . | . |
    When the game evolves
    Then the center cell should be alive

  Scenario: A living cell with three living neighbors stays alive
    Given the following setup
     | . | x | x |
     | . | x | . |
     | x | . | . |
    When the game evolves
    Then the center cell should be alive

  Scenario: A living cell with four living neighbors dies
    Given the following setup
     | . | x | x |
     | . | x | . |
     | x | x | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A living cell with five living neighbors dies
    Given the following setup
     | x | x | x |
     | x | x | . |
     | x | . | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A living cell with six living neighbors dies
    Given the following setup
     | x | x | x |
     | x | x | . |
     | x | x | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A living cell with seven living neighbors dies
    Given the following setup
     | . | x | x |
     | x | x | x |
     | x | x | x |
    When the game evolves
    Then the center cell should be dead

  Scenario: A living cell with eight living neighbors dies
    Given the following setup
     | x | x | x |
     | x | x | x |
     | x | x | x |
    When the game evolves
    Then the center cell should be dead
