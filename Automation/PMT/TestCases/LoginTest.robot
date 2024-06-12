*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Keywords.robot

*** Variables ***
${browser}  chrome
${pmturl}  https://testpmt.azurewebsites.net/
${username}     centeruser@gmail.com
${password}     12345

*** Test Cases ***
LoginTest
    Open my Browser     ${pmturl}   ${browser}
    Click Login Screen
    Enter Username      ${username}
    Enter Password      ${password}
    Click Signin
    sleep 3 seconds
    Veryfy Successfull Login
    Close my browsers