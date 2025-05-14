*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Test Cases ***
Open Saucedemo Website in Edge
    SeleniumLibrary.Open Browser    https://www.saucedemo.com/inventory.html    edge
