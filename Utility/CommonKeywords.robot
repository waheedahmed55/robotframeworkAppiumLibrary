*** Settings ***
Resource        ../PageObjects/HomePageObjects.robot
Resource        ../Utility/AppiumLibraryKeywords.robot
Resource        ../Helper/LoginRegistrationPageHelper.robot

*** Keywords ***
Verify android large icon is available
    wait untill element is visible on the screen    ${HomeAndroidIcon}      30

Verify text is available on the page
    [Arguments]     ${text}
    Screen should contains text     ${text}

Open the option
    [Arguments]     ${option}
    Wait untill element is visible on the screen    xpath=//android.widget.TextView[@text='${option}']      5
    Click on an element      xpath=//android.widget.TextView[@text='${option}']

Verify option available on the page
    [Arguments]     ${option}
    Screen should contains element      xpath=//android.widget.TextView[@text='${option}']

Wait for the page to be load
    Wait Until Page Contains text on the screen      LOADING...      10

Swipe the screen up
    Swipe the screen    599    1754    599    1123

Swipe the screen down
    Swipe the screen    599    1123    599    1754

Login to the application
    [Arguments]     ${username}     ${password}
    Click on Login Link
    Enter username      ${username}
    Enter password     ${password}
    Click on Login button

Sign up to the application
    [Arguments]     ${username}     ${password}     ${confirmPassword}
    Click on Signup Link
    Enter username      ${username}
    Enter password     ${password}
    Enter confirm password     ${confirmPassword}
    Click on Sign in button
