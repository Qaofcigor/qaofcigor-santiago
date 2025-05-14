*** Settings ***
Documentation     This is a sample test suite for Robot Framework.
Library           SeleniumLibrary

*** Test Cases ***
Teste de Login

    [Documentation]    This is a sample test case.
    Open Browser    https://www.saucedemo.com/    chrome




    Title Should Be    Swag Labs



    Input Text    id=username    standard_user
    Input Text    id=password    secret_sauce
    Click Button    id=login-button



    Close Browser
