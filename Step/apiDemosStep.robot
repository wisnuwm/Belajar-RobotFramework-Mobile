*** Settings ***
Library                 AppiumLibrary
Resource                ../Resources/apiDemosPage.robot
Variables               ../Resources/locator.yaml
Suite Setup              Start Session Apps
Suite Teardown           Close Apps
***Test Cases***
As a user i want to open API Demos apps
    Page should contain Text        Accessibility
    Tap                             ${accessibility}
    Sleep                           1
    Page should contain Text        Accessibility Node Provider
As a user i want to open accessibility node Provider
    Tap                             ${accessibility_node_provider}
    Page should contain Text        Enable TalkBack