*** Settings ***
Library    SeleniumLibrary


*** Variables ***
*** Test Cases ***
TC01 LoginTest
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    gc
    Maximize Browser Window
    Sleep    3
    Input Text    xpath://input[@name="username"]    Admin
    #Input Text    name:username    Admin
    Input Password    xpath://input[@name="password"]    admin123
    Click Button    xpath://button
    Sleep    4
    Close Browser    
*** Keywords ***
 
