*** Settings ***
Library           SeleniumLibrary

*** Variables ***
${LOGIN_URL}   https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Keywords ***
Given I am on the SauceDemo login page
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window

When I log in with username "${username}" and password "${password}"
    Input Text    id=user-name    ${username}
    Input Text    id=password    ${password}
    Click Button    id=login-button
    Wait Until Page Contains Element    class=inventory_list

And I add items to the cart
    Click Button    id=add-to-cart-sauce-labs-backpack
    Click Button    id=add-to-cart-sauce-labs-bike-light
    Click Element    class=shopping_cart_link
    Page Should Contain    text=Sauce Labs Backpack
    Page Should Contain    text=Sauce Labs Bike Light
   

And I proceed to checkout
    Click Element    id=checkout
    Input Text    id=first-name    "John"
    Input Text    id=last-name     "Doe"
    Input Text    id=postal-code    "12345"
    Click Button    id=continue
    Page Should Contain    text=Checkout: Overview
    Page Should Contain    text=Sauce Labs Backpack
    Page Should Contain    text=Sauce Labs Bike Light
     Click Button    id=finish

Then I should see the checkout information page
    Page Should Contain    Checkout: Complete!