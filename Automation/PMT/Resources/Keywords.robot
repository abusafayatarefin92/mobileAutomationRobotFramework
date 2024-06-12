*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${pmturl}  ${browser}
    open browser    ${pmturl}     ${browser}
    maximize browser window

Click Login Screen
    click button    ${btn_LoginScreen}

Enter Username
    [Arguments]  ${username}
    input text  ${txt_loginUsername}    ${username}

Enter Password
    [Arguments]     ${password}
    input text      ${txt_loginPassword}    ${password}

Click Signin
    click button    ${btn_Login}

Veryfy Successfull Login
    title should be Home|PMT

Close my browsers
    close all browsers