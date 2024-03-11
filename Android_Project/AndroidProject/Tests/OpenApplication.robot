*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
OpenApplication
    Open Application    http://localhost:9000/wd/hub    platformName=Android    deviceName=HA1HVBA2     appPackage=jp.naver.line.android    appActivity=jp.naver.line.android.activity.SplashActivity   automationName=Uiautomator2
