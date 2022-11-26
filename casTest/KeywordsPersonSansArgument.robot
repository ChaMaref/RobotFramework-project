*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
Test login orangehrm
    Se connecter a l'appli Orangehrm
    Input Text    xpath://input[@name='username']    Admin
    Input Password    xpath://input[@name='password']    admin123
    Click Button    //button



*** Keywords ***
Se connecter a l'appli Orangehrm
    Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    gc
    Maximize Browser Window
    Sleep    2