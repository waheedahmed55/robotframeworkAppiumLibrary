*** Settings ***
Library     AppiumLibrary
Resource         ../Utility/Setup.robot
Resource         ../Utility/CommonKeywords.robot
Suite Setup      Open the application in device
Test Setup       Open the option     Home
Suite Teardown   Close the application

*** Test Cases ***
Test1
    Verify android large icon is available
    Open the option     Home
    Open the option     WebView
    Wait for the page to be load
    Sleep       10s
    ${val}=     Get Contexts
    log to console      ${val}
    Switch to the context       WEBVIEW_com.wdiodemoapp
    Execute Script      window.scrollTo(0,document.body.scrollHeight)
    Sleep   6s
    Click on an element     xpath=//a[text()='Blog']
    Sleep   6s
    ${val}=     Get Contexts
    log to console      ${val}
    Switch to the context       NATIVE_APP
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
    ${val}=     Get Contexts
    log to console      ${val}
    Switch to the context       WEBVIEW_com.wdiodemoapp
    @{elements}     Get WebElements      css=nav.slidingNav li>a
    #log to console      @{elements}
    #${len}=     Get Length      @{elements}
    FOR     ${i}   IN RANGE    6
        ${val}=      Get Text       ${elements}[${i}]
        log to console      ${val}
        Sleep   5s
        #@{elements}     Get WebElements      css=nav.slidingNav li>a
        Click Element     ${elements}[${i}]
    END