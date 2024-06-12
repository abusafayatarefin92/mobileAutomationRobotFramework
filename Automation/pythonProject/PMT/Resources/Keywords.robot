*** Settings ***
Library     SeleniumLibrary
Variables   ../PageObjects/Locators.py
Library  SeleniumLibrary
Variables   ../PageObjects/Locators.py

*** Keywords ***
Open my Browser
    [Arguments]  ${pmturl}  ${browser}
    open browser    ${pmturl}     ${browser}
    maximize browser window

Click Login Screen
    click element    ${btn_LoginScreen}

Enter Username
    [Arguments]  ${username}
    input text  ${txt_loginUsername}    ${username}

Enter Password
    [Arguments]     ${password}
    input text      ${txt_loginPassword}    ${password}

Click Signin
    click element    ${btn_Login}

Veryfy Successfull Login
    title should be     Home|PMT

Select Region
    select from list by label       ${region_selector}     ${region}

Select Country
    select from list by label   ${country_selector}     ${country}

Close my browsers
    close all browsers