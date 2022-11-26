*** Settings ***
Library    SeleniumLibrary


*** Variables ***

*** Test Cases ***
TC01 loginTest
    Open Browser    https://www.google.com    gc
    Maximize Browser Window
    Sleep    4
    Close Browser
TC02 logoutTest
    Open Browser    https://www.ilovepdf.com    gc
    Maximize Browser Window
    Sleep    4
    Close Browser
*** Keywords ***

