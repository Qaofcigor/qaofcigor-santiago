*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Test Cases ***
Login on Saucedemo and Stay Open
    SeleniumLibrary.Open Browser    https://www.saucedemo.com/    edge
    SeleniumLibrary.Input Text    id=user-name    standard_user
    SeleniumLibrary.Input Text    id=password    secret_sauce
    SeleniumLibrary.Click Button    id=login-button
    SeleniumLibrary.Wait Until Page Contains Element    id=inventory_container
    # A página permanecerá aberta indefinidamente
