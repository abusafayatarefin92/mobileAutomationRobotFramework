*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${rmpurl}  https://rmptest.scibd.info/
${username}     testindia
${password}     12345

*** Test Cases ***
LoginTest
#    create webdriver    chrome  executable_path="C:\Users\abu.arefin\Downloads\Software\chromedriver_win32\chromedriver.exe"
    loginToRMPApplication
    close browser

*** Keywords ***
loginToRMPApplication
    open browser    ${rmpurl}     ${browser}
    maximize browser window
    click element  xpath:/html/body/div/div[2]/div/div/div/a
    input text  id:Email    ${username}
    input text  id:Password     ${password}
    click element   xpath:/html/body/div/div[2]/div/form/div[3]/button