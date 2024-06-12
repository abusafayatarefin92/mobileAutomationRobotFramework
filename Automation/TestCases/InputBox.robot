*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${rmpurl}  https://rmptest.scibd.info/
${rmpusername}     testindia
${rmppassword}     12345

*** Test Cases ***
LoginTest
#    create webdriver    chrome  executable_path="C:\Users\abu.arefin\Downloads\Software\chromedriver_win32\chromedriver.exe"
    TestingInputBox
    close browser

*** Keywords ***
TestingInputBox
    open browser    ${rmpurl}     ${browser}
    maximize browser window
    title should be     RMP
    click element  xpath:/html/body/div/div[2]/div/div/div/a

    ${"email_text"}     set variable    id:Email

    element should be visible   ${"email_text"}
    element should be enabled   ${"email_text"}

    input text  ${"email_text"}    ${rmpusername}
    sleep   5
    clear element text      ${"email_text"}

    ${"password_text"}     set variable    id:Password

    element should be visible   ${"password_text"}
    element should be enabled   ${"password_text"}

    input text  ${"password_text"}    ${rmppassword}
    sleep   5
    clear element text      ${"password_text"}