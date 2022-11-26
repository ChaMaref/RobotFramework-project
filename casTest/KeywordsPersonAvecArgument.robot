*** Settings ***
Library    SeleniumLibrary
*** Variables ***
*** Test Cases ***
Test login orangehrm
    Se connecter a l'appli    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    gc
    Remplir le formulaire login    Admin    admin123
    Click Button    //button
    Close Browser

Test logout orangehrm
    Se connecter a l'appli    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    gc
    Remplir le formulaire login    Admin    admin123
    Click Button    //button
    Close Browser



*** Keywords ***
Se connecter a l'appli
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}    
    #Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    gc
    Maximize Browser Window
    Sleep    2
Remplir le formulaire login
    [Arguments]    ${user}    ${pass}
    Input Text    xpath://input[@name='username']    ${user}
    Input Password    xpath://input[@name='password']    ${pass}