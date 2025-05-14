*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Login on Saucedemo and Interact with Multiple Fields
    [Documentation]    Este teste realiza o login no Saucedemo, interage com vários campos e mantém a página aberta.
    SeleniumLibrary.Open Browser    ${URL}    edge
    SeleniumLibrary.Input Text    id=user-name    ${USERNAME}
    SeleniumLibrary.Input Text    id=password    ${PASSWORD}
    SeleniumLibrary.Click Button    id=login-button
    SeleniumLibrary.Wait Until Page Contains Element    id=inventory_container
    # Interagir com vários campos
    SeleniumLibrary.Wait Until Page Contains Element    css=.inventory_item  # Espera até que o item esteja presente
    SeleniumLibrary.Click Element    css=.inventory_item:first-child  # Clica no primeiro item
    SeleniumLibrary.Click Button    id=add-to-cart-sauce-labs-backpack  # Adiciona ao carrinho
    SeleniumLibrary.Go To    ${URL}    # Retorna à página inicial
    BuiltIn.Sleep    999999  # Mantém a página aberta indefinidamente
