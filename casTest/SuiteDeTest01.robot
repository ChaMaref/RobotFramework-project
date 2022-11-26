*** Settings ***
Library    SeleniumLibrary


*** Test Cases ***
Ouverture page web
    Open Browser    https://www.google.com    chrome
    Maximize Browser Window
    Sleep    4
    Close Browser
