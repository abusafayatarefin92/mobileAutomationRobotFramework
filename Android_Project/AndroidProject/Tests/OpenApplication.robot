*** Settings ***
Library     AppiumLibrary
Library    AppiumLibrary

*** Test Cases ***
OpenApplication
#    Open Application    http://localhost:9000/wd/hub    platformName=Android    deviceName=27151FDH2005PB     appPackage=com.sci.chat_app    appActivity=com.sci.chat_app.MainActivity   automationName=Uiautomator2
    Open Application    http://localhost:9000/wd/hub    platformName=Android    deviceName=27151FDH2005PB    appPackage=com.sci.chat_app    appActivity=com.sci.chat_app.MainActivity    automationName=Uiautomator2