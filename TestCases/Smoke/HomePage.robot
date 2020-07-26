*** Settings ***
Resource         ../../Utility/Setup.robot
Resource         ../../Utility/CommonKeywords.robot
Suite Setup      Open the application in device
Test Setup       Open the option     Home
Suite Teardown   Close the application

*** Test Cases ***
Verify home page screen
    [Tags]      smoke1
    Verify android large icon is available
    Verify text is available on the page    WEBDRIVER
    Verify text is available on the page    Demo app for the appium-boilerplate
    Verify text is available on the page    Support
    Verify option available on the page     Home
    Verify option available on the page     WebView
    Verify option available on the page     Login
    Verify option available on the page     Forms
    Verify option available on the page     Swipe

Open all tab on in the application
    [Tags]      smoke
    Verify android large icon is available
    Open the option     WebView
    Wait for the page to be load
    Open the option     Login
    Open the option     Forms
    Open the option     Swipe

Verify WebView tab Action
    [Tags]      smoke
    Verify android large icon is available
    Open the option     WebView
    sleep   5s
    Verify text is available on the page    Docs
    Verify text is available on the page    API
    Verify text is available on the page    Help
    Verify text is available on the page    Versions
    Verify text is available on the page    Blog
    Verify text is available on the page    Contribute
    Swipe the screen up
    Verify text is available on the page    GET STARTED
    Swipe the screen down
    #Go to the Bottom of the page
    Open the option     Swipe


