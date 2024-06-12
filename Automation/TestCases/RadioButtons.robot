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
    RadioButtonRMPApplication
    close browser

*** Keywords ***
RadioButtonRMPApplication
    open browser    ${rmpurl}     ${browser}
    maximize browser window
    click element  xpath:/html/body/div/div[2]/div/div/div/a
    input text  id:Email    ${username}
    input text  id:Password     ${password}
    click element   xpath:/html/body/div/div[2]/div/form/div[3]/button
    click element   xpath://*[@id="loa"]
    click element   id:bntAddNew
    sleep   5

    #Radio buttons
    #select radio button     HaveAnyDisclosur    2
    click element   xpath://*[@id="NeedLegalAdvice"]/label[2]

    #Check-boxes
#    select checkbox     LocalLawId     1
#    select checkbox     LocalLawId     4
    click element   xpath://*[@id="LocalLawId"]/div[1]/div[3]/label
    click element   xpath://*[@id="LocalLawId"]/div[3]/div[3]/label
    click element   xpath://*[@id="LocalLawId"]/div[4]/div[1]/label
    sleep   5