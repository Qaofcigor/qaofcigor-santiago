*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Login on Saucedemo, Add Multiple Items to Cart, and Checkout
    [Documentation]    Este teste realiza o login no Saucedemo, adiciona vários produtos ao carrinho e navega para a página de checkout.
    SeleniumLibrary.Open Browser    ${URL}    edge
    SeleniumLibrary.Input Text    id=user-name    ${USERNAME}
    SeleniumLibrary.Input Text    id=password    ${PASSWORD}
    SeleniumLibrary.Click Button    id=login-button
    SeleniumLibrary.Wait Until Page Contains Element    id=inventory_container
    # Adiciona os produtos ao carrinho
    SeleniumLibrary.Click Button    id=add-to-cart-sauce-labs-backpack  # Adiciona o Sauce Labs Backpack
    SeleniumLibrary.Click Button    id=add-to-cart-sauce-labs-bike-light  # Adiciona o Sauce Labs Bike Light
    SeleniumLibrary.Click Button    id=add-to-cart-sauce-labs-bolt-t-shirt  # Adiciona o Sauce Labs Bolt T-Shirt
    SeleniumLibrary.Go To    https://www.saucedemo.com/cart.html  # Navega para a página do carrinho
    BuiltIn.Sleep    999999  # Mantém a página do carrinho aberta indefinidamente
