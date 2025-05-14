*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Login on Saucedemo, Add Items to Cart, and Checkout
    [Documentation]    Este teste realiza o login no Saucedemo, adiciona vários produtos ao carrinho e navega para a página de checkout.
    SeleniumLibrary.Open Browser    ${URL}    edge
    SeleniumLibrary.Input Text    id=user-name    ${USERNAME}
    SeleniumLibrary.Input Text    id=password    ${PASSWORD}
    SeleniumLibrary.Click Button    id=login-button
    SeleniumLibrary.Wait Until Page Contains Element    id=inventory_container
    # Adiciona os produtos ao carrinho usando os IDs corretos
    SeleniumLibrary.Wait Until Page Contains Element    css=.inventory_item  # Espera até que o item esteja presente
    SeleniumLibrary.Click Element    xpath=//button[@id='add-to-cart-sauce-labs-bike-light']  # Adiciona o Bike Light
    SeleniumLibrary.Click Element    xpath=//button[@id='add-to-cart-sauce-labs-bolt-t-shirt']  # Adiciona o Bolt T-Shirt
    SeleniumLibrary.Click Element    xpath=//button[@id='add-to-cart-sauce-labs-fleece-jacket']  # Adiciona o Fleece Jacket
    SeleniumLibrary.Go To    https://www.saucedemo.com/cart.html  # Navega para a página do carrinho
    BuiltIn.Sleep    999999  # Mantém a página do carrinho aberta indefinidamente
