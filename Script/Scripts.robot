*** Settings ***
Documentation     Fichiers de scripts pour le module RQ3 : Sites.
Library    SeleniumLibrary
Variables    ../Ressources/Locators/Locators.py
Resource    ../Ressources/Keywords/Keywords.robot

*** Variables ***
${vURL}    http://localhost:8987/share/page/
${vBrowser}    chrome
${vUsername}    6191756
${vPassword}    12345678
${TIMEOUT}    5s
#${txt_UserName}    username
#${txt_Password}    password
#${btn_Login}    //button[@id='page_x002e_components_x002e_slingshot-login_x0023_default-submit-button']
#${lblTitle}    //h1[@id='HEADER_TITLE']/span
#${link_HeaderUserMenu}    id=HEADER_USER_MENU_POPUP_text
#${link_HeaderDeconnexion}    id=HEADER_USER_MENU_LOGOUT_text



*** Test Cases ***
Test
    Login    ${vURL}    ${vBrowser}    ${vUsername}    ${vPassword} 
    
    Logout



