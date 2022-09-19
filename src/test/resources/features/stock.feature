Feature: Stock products
  As a customer
  I want to buy products

  Background:
    Given the store is ready to service customers
    And a product "Bread" with price 20.50 and stock of 5 exists
    And a product "Jam" with price 80.00 and stock of 10 exists
    And a product "Cake" with price 150.00 and stock of 3 exists

Scenario: Buy a product
  When I buy "Bread" with quantity 2
  Then "Bread" stock should be 3

  Scenario Outline: Buy a product in the table
    When I buy <product> with quantity <buy>
    Then <product> stock should be <left>
    Examples:
      | product | buy | left |
      | "Bread"   | 3   | 2    |
      | "Cake"    | 1   | 2    |
