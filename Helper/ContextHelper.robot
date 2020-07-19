*** Settings ***
Resource         ../Utility/AppiumLibraryKeywords.robot
Resource         ../PageObjects/ContextPageObject.robot

*** Keywords ***
Get available context in the app
    [return]    Get all available context

Switch to the current Context
    [Arguments]     ${context}
    Switch to the context   ${context}

Click on header menu
    [Arguments]     ${headerMenu}
    Click on an element     xpath=//a[text()='${headerMenu}']

Scroll to the copyright
    Scroll at the bottom of the page

Verify Copyright text is avilable
    Screen should contains element      ${copyRight}

Get Header text and click on it
     ${val}=     Get available context in the app
    log to console      ${val}
    Switch to the current Context       ${WebView}
    FOR     ${i}   IN RANGE    1    7
        ${val}=      Get element text       css=nav.slidingNav li:nth-of-type(${i})>a
        log to console      ${val}
        Sleep   5s
        Click on header menu     ${val}
    END