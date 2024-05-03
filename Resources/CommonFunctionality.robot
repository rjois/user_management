*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Start TestCase
    Open Browser    http://localhost/    chrome
    Maximize Browser Window

Finish TestCase
    Close Browser