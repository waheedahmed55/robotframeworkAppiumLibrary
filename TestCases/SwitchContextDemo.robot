*** Settings ***
Library          Collections
Resource         ../Utility/Setup.robot
Resource         ../Utility/CommonKeywords.robot
Resource         ../TestData/ApplicationProperties.robot
Resource         ../Helper/ContextHelper.robot
Suite Setup      Open the application in device
Test Setup       Open the option     Home
Suite Teardown   Close the application

*** Test Cases ***
Verify switching to context
    Verify android large icon is available
    Open the option     Home
    Open the option     WebView
    Wait for the page to be load
    Sleep       10s
    ${val}=     Get available context in the app
    log to console      ${val}
    Switch to the current Context       ${WebView}
    Execute Script      window.scrollTo(0,document.body.scrollHeight)
    Sleep   6s
    Click on header menu     Blog
    Sleep   6s
    ${val}=     Get available context in the app
    log to console      ${val}
    Switch to the current Context       ${NativeVew}
    Open the option     Home
    Verify text is available on the page    WEBDRIVER
    Verify text is available on the page    Demo app for the appium-boilerplate
    Verify text is available on the page    Support
    Verify option available on the page     Home
    Verify option available on the page     WebView
    Verify option available on the page     Login
    Verify option available on the page     Forms
    Verify option available on the page     Swipe

Work with multple elements
    [Tags]      Test
    Verify android large icon is available
    Open the option     Home
    Open the option     WebView
    Wait for the page to be load
    Sleep       5s
    Get Header text and click on it
    Scroll to the copyright
    sleep   5s
    Verify Copyright text is avilable