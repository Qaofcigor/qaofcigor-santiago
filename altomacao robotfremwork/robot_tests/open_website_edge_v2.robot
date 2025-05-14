*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Test Cases ***
Open Website in Edge
    SeleniumLibrary.Open Browser    http://example.com    edge
