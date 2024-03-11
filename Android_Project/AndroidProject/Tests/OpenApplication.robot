*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
OpenApplication
    Open Application    http://localhost:9000/wd/hub    platformName=Android    deviceName=aba5288e     appPackage=jp.naver.line.android    appActivity=jp.naver.line.android.activity.SplashActivity   automationName=Uiautomator2
