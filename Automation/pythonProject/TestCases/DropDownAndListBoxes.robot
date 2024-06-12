*** Settings ***
Library  SeleniumLibrary

*** Variables ***
${browser}  chrome
${pmturl}  https://pmttest.scibd.info/
${username}     centeruser@gmail.com
${password}     12345

*** Test Cases ***
LoginTest
#    create webdriver    chrome  executable_path="C:\Users\abu.arefin\Downloads\Software\chromedriver_win32\chromedriver.exe"
    DropDownAndListBoxesPMTApplication
    close browser

*** Keywords ***
DropDownAndListBoxesPMTApplication
    open browser    ${pmturl}     ${browser}
    maximize browser window
    click element  xpath://*[@id="LoginDiv"]/div/div/a
    input text  id:Email    ${username}
    input text  id:Password     ${password}
    click element   xpath:/html/body/div/div[2]/div/form/div[3]/button
    sleep   3

    click element   xpath://*[@id="kt_body"]/div/div/div/div[2]/div/div[1]/div/div[2]/div/div[1]/div/span/span[1]/span
    select from list by label   select2-RegionId8c6pf5poucyc41kzt0yrmb-container    Asia
    sleep   2
#    select from list by label   select2-CountryIdebc08vkyvp8xp7z32dxo-container   India Member Implementing Office
#    sleep   2
#
#    click element  xpath://*[@id="strategic"]
#    click element   xpath://*[@id="strategic"]/ul/li[2]/a
#
#    element should be visible   xpath://*[@id="kt_body"]/div/div/div[1]/div[1]/h1
#
#    click element   xpath://*[@id="bntAddNew"]
#    sleep   3
#
#    click element   xpath://*[@id="btnAdd"]
#    sleep   2
#
#    click element   xpath://*[@id="ObjectiveMilestone"]/div[2]/div[1]/div/span[1]/span[1]/span
#    sleep   2
#
#    select from list by label   GlobalObjectiveId   USE DIGITAL & DATA
#    sleep   2
#    select from list by label   GlobalObjectiveId   STRATEGIC PARTNERSHIPS
#    sleep   2
