*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Login on Saucedemo, Add Item to Cart, and Return to Cart
    [Documentation]    Este teste realiza o login no Saucedemo, adiciona o item "Sauce Labs Backpack" ao carrinho, realiza o checkout e retorna à página do carrinho.
    SeleniumLibrary.Open Browser    ${URL}    edge
    SeleniumLibrary.Input Text    id=user-name    ${USERNAME}
    SeleniumLibrary.Input Text    id=password    ${PASSWORD}
    SeleniumLibrary.Click Button    id=login-button
    SeleniumLibrary.Wait Until Page Contains Element    id=inventory_container
    # Adiciona o item "Sauce Labs Backpack" ao carrinho
    SeleniumLibrary.Wait Until Page Contains Element    css=.inventory_item  # Espera até que o item esteja presente
    SeleniumLibrary.Click Element    css=.inventory_item:first-child button  # Clica no botão do primeiro item
    SeleniumLibrary.Go To    https://www.saucedemo.com/cart.html  # Navega para a página do carrinho
    BuiltIn.Sleep    999999  # Mantém a página do carrinho aberta indefinidamente
