*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Login on Saucedemo and Add Multiple Items to Cart
    [Documentation]    Este teste realiza o login no Saucedemo e adiciona vários produtos ao carrinho.
    SeleniumLibrary.Open Browser    ${URL}    edge
    SeleniumLibrary.Input Text    id=user-name    ${USERNAME}
    SeleniumLibrary.Input Text    id=password    ${PASSWORD}
    SeleniumLibrary.Click Button    id=login-button
    SeleniumLibrary.Wait Until Page Contains Element    id=inventory_container
    # Adiciona os produtos ao carrinho
    SeleniumLibrary.Click Element    xpath=//div[@class='inventory_item_name' and text()='Sauce Labs Bike Light']/..//button  # Adiciona o Bike Light
    SeleniumLibrary.Click Element    xpath=//div[@class='inventory_item_name' and text()='Sauce Labs Bolt T-Shirt']/..//button  # Adiciona o Bolt T-Shirt
    SeleniumLibrary.Click Element    xpath=//div[@class='inventory_item_name' and text()='Sauce Labs Fleece Jacket']/..//button  # Adiciona o Fleece Jacket
    SeleniumLibrary.Go To    https://www.saucedemo.com/cart.html  # Navega para a página do carrinho
    BuiltIn.Sleep    999999  # Mantém a página do carrinho aberta indefinidamente
