*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Variables ***
${URL}    https://www.saucedemo.com/
${USERNAME}    standard_user
${PASSWORD}    secret_sauce

*** Test Cases ***
Login on Saucedemo and Keep Page Open
    [Documentation]    Este teste realiza o login no Saucedemo usando as credenciais padrão e mantém a página aberta.
    SeleniumLibrary.Open Browser    ${URL}    edge
    SeleniumLibrary.Input Text    id=user-name    ${USERNAME}
    SeleniumLibrary.Input Text    id=password    ${PASSWORD}
    SeleniumLibrary.Click Button    id=login-button
    SeleniumLibrary.Wait Until Page Contains Element    id=inventory_container
    # Mantém a página aberta indefinidamente
    BuiltIn.Sleep    999999
