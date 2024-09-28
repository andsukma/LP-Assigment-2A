*** Settings ***
Resource           ../resources/keywords.robot    

*** Test Cases ***
Scenario: Shopping Cart Checkout
    Given I am on the SauceDemo login page
    When I log in with username "${USERNAME}" and password "${PASSWORD}"
    And I add items to the cart
    And I proceed to checkout
    Then I should see the checkout information page