*** Settings ***
Library    SeleniumLibrary
Library    robotframework_edge_config.py

*** Test Cases ***
Open Website in Edge
    Open Browser    http://example.com    edge
