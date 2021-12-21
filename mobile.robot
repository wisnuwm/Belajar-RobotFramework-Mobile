***Settings***
Library                 AppiumLibrary
Variables               apiDemosLocator.yaml
Test Setup             Start Session
Test Teardown          Close Application

*** Variables ***

***Keywords***
Start Session
    Set Appium Timeout  10
    Open Application    http://localhost:4723/wd/hub
    ...                 automationName=UiAutomator2
    ...                 platformName=Android
    ...                 deviceName=emulator-5554
    ...                 appPackage=io.appium.android.apis
    ...                 appActivity=io.appium.android.apis.ApiDemos
    ...                 autoGrantPermissions=true
    ...                 noReset=true
    Sleep               1

Tap Accessibility
    Tap                             ${accessibility}
Tap Accessibility Node Provider
    Tap                             ${accessibility_node_provider}

Close Session
    Capture Page Screenshot
    Close Application                      noReset=true

Close Application
    Capture Page Screenshot
    Quit Application   

***Test Cases***
As a user i want to open API Demos apps
    Page should contain Text        Accessibility
    Tap                             ${accessibility}
    Sleep                           1
    Page should contain Text        Accessibility Node Provider
As a user i want to validate inside the accessibility node provider should showing enable talkback settings
    Tap Accessibility
    Sleep    1
    Tap Accessibility Node Provider
    Page should contain Text        Enable TalkBack and Explore-by-touch from accessibility settings. Then touch the colored squares
    Capture Page Screenshot
