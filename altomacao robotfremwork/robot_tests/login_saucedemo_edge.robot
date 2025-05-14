*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Test Cases ***
Login on Saucedemo
    SeleniumLibrary.Open Browser    https://www.saucedemo.com/    edge
    SeleniumLibrary.Input Text    id=user-name    standard_user
    SeleniumLibrary.Input Text    id=password    secret_sauce
    SeleniumLibrary.Click Button    id=login-button
