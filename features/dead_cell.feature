Feature: Evolving a dead cell
  In order to create a functioning rules engine
  As a programmer implementing the game of life
  I want a dead cell to evolve

  Scenario: A dead cell without living neighbors stays dead
    Given the following setup
      | . | . | . |
      | . | . | . |
      | . | . | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A dead cell with one living neighbor stays dead
    Given the following setup
    | . | x | . |
    | . | . | . |
    | . | . | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A dead cell with two living neighbors stays dead
    Given the following setup
    | . | x | x |
    | . | . | . |
    | . | . | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A dead cell with three living neighbors comes to life
    Given the following setup
    | . | x | x |
    | . | . | . |
    | x | . | . |
    When the game evolves
    Then the center cell should be alive

  Scenario: A dead cell with four living neighbors stays dead
    Given the following setup
    | . | x | x |
    | . | . | . |
    | x | x | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A dead cell with five living neighbors stays dead
    Given the following setup
    | x | x | x |
    | x | . | . |
    | x | . | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A dead cell with six living neighbors stays dead
    Given the following setup
    | x | x | x |
    | x | . | . |
    | x | x | . |
    When the game evolves
    Then the center cell should be dead

  Scenario: A dead cell with seven living neighbors stays dead
    Given the following setup
    | . | x | x |
    | x | . | x |
    | x | x | x |
    When the game evolves
    Then the center cell should be dead

  Scenario: A dead cell with eight living neighbors stays dead
    Given the following setup
    | x | x | x |
    | x | . | x |
    | x | x | x |
    When the game evolves
    Then the center cell should be dead
