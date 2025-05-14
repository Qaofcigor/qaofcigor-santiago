*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Test Cases ***
Open Saucedemo Login Page in Edge
    SeleniumLibrary.Open Browser    https://www.saucedemo.com/    edge
