*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${Site}   https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    
${navigateur}    gc
*** Test Cases ***
Test login orangehrm
    ${OrangeTitle}    Se connecter a l'appli Orangehrm    ${Site}    ${navigateur}
    Log     ${OrangeTitle}
    Input Text    xpath://input[@name='username']    Admin
    Input Password    xpath://input[@name='password']    admin123
    Click Button    //button
    Close Browser



*** Keywords ***
Se connecter a l'appli Orangehrm
    [Documentation]    Ce mot clé nous permet d'ouvrir l'appli sous test
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    #Open Browser    https://opensource-demo.orangehrmlive.com/web/index.php/auth/login    gc
    Maximize Browser Window
    Sleep    2
    ${titrePage}    Get Title
    [Return]    ${titrePage}
