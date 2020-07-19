*** Settings ***
Library     AppiumLibrary

*** Keywords ***
#Puts the application in the background on the device for a certain duration
Keep the application in Background
    [Arguments]     ${seconds}
    Background App  ${seconds}

#Clears the text field identified by locator
Clear text of the field
    [Arguments]     ${locator}
    Wait untill element is visible on the screen    ${locator}      5
    Clear Text	${locator}

#Click on a point
Click by position
    [Arguments]     ${x}    ${y}    ${duration}
    Click A Point     ${x}    ${y}    ${duration}

#Click on an element
Click on an element
    [Arguments]     ${locator}
    Wait untill element is visible on the screen    ${locator}      5
    Click Element	${locator}

#Click element at a certain coordinate
Click by coodinates
    [Arguments]     ${coordinate_X}    ${coordinate_Y}
    Click Element At Coordinates	${coordinate_X}    ${coordinate_Y}

#Click text identified by text
Click on text
    [Arguments]     ${text}     ${exact_match}
    Click Text     ${text}     ${exact_match}

#Closes all open applications
Close all open application
    Close All Applications

#Closes the current application and also close webdriver session
Close current application
    Close Application

#Verify that an attribute of an element matches the expected criteria
Verify element attribute
    [Arguments]     ${locator}  ${attr_name}    ${match_pattern}    ${regexp}
    Wait untill element is visible on the screen    ${locator}      5
    Element Attribute Should Match     ${locator}  ${attr_name}    ${match_pattern}    ${regexp}

#Verifies that element identified with locator is enabled
Verify element is enabled
    [Arguments]     ${locator}
    Wait untill element is visible on the screen    ${locator}      5
    Element Should Be Enabled     ${locator}

#Verifies that element identified with locator is visible
Verify element is visible
    [Arguments]     ${locator}
    Wait untill element is visible on the screen    ${locator}      5
    Element Should Be Visible     ${locator}

#Verifies element identified by locator contains text expected
Verify element text should contains
    [Arguments]     ${locator}      ${text}
    Wait untill element is visible on the screen    ${locator}      5
    Element Should Contain Text     ${locator}      ${text}

#Verifies element identified by locator does not contain text expected
Verify element text should not contains
    [Arguments]     ${locator}      ${text}
    Wait untill element is visible on the screen    ${locator}      5
    Element Should Not Contain Text     ${locator}      ${text}

#Verifies element identified by locator exactly contains text expected
Verify element text
    [Arguments]     ${locator}      ${text}
    Wait untill element is visible on the screen    ${locator}      5
    Element Text Should Be     ${locator}      ${text}

#Get element attribute using given attribute: name, value,
Get element attribute value
    [Arguments]     ${locator}      ${attribute}
    Wait untill element is visible on the screen    ${locator}      5
    ${value}=   Get Element Attribute     ${locator}      ${attribute}
    [return]    ${value}

#Get element size
Get element value
    [Arguments]     ${locator}
    Wait untill element is visible on the screen    ${locator}      5
    ${value}=   Get Element Size     ${locator}
    [return]    ${value}

#Returns number of elements matching xpath
Get element count by xpath
    [Arguments]     ${locator}
    ${value}=   Get Matching Xpath Count     ${locator}
    [return]    ${value}

#Returns the entire source of the current page
Get page source
    ${value}=   Get Source
    [return]    ${value}

#Get element text (for hybrid and mobile browser use xpath locator, others might cause problem)
Get element text
    [Arguments]     ${locator}
    Wait untill element is visible on the screen    ${locator}      5
    ${value}=   Get Text     ${locator}
    [return]    ${value}

#Get current device height
Get current device height
    [return]    Get Window Height

#Get current device Width
Get current device Width
    [return]    Get Window Width

#Goes one step backward in the browser history
Go back to previous page
    Go Back

#Opens URL in default web browser
Go to the URL
    [Arguments]     ${URL}
    Go To Url	${URL}

#Hide the keypad
Hide the keypad
    Hide Keyboard

#Types the given password into text field identified by locator
Enter text in password
    [Arguments]     ${locator}  ${password}
    Wait untill element is visible on the screen    ${locator}      5
    Input Password     ${locator}  ${password}
    Hide the keypad

#Types the given text into text field identified by locator
Enter text in the field
    [Arguments]     ${locator}  ${text}
    Wait untill element is visible on the screen    ${locator}      5
    clear text of the field     ${locator}
    Input Text     ${locator}  ${text}
    Hide the keypad

#Set the device orientation to LANDSCAPE
Set the device orientation to LANDSCAPE
    Landscape

#Launch application Application can be launched while Appium session running This keyword can be used to launch application during test case or between test cases
Lauch the application
    Launch Application

#Logs and returns the entire html source of the current page or frame
Log the page screen source
    Log Source

#Long press the element with optional duration
Long press the element
    [Arguments]     ${locator}  ${duration}
    Wait untill element is visible on the screen    ${locator}      5
    Long Press     ${locator}  ${duration}

#Verifies that current page contains text
Screen should contains text
    [Arguments]     ${text}
    Wait Until Page Contains text on the screen     ${text}     5
    Page Should Contain Text     ${text}

#Verifies that current page not contains text
Screen should not contains text
    [Arguments]     ${text}
    Page Should Not Contain Text     ${text}

#Verifies that current page contains locator element
Screen should contains element
    [Arguments]     ${locator}
    Page Should Contain Element     ${locator}

#Verifies that current page not contains locator element
Screen should not contains element
    [Arguments]     ${locator}
    Page Should Not Contain Element     ${locator}

#Pinch in on an element a certain amount
Pinch on element
    [Arguments]     ${locator}  ${duration}
    Pinch     ${locator}  ${duration}%

#Set the device orientation to PORTRAIT
Set the device orientation to PORTRAIT
    Portrait

#Quit application Application can be quit while Appium session is kept alive This keyword can be used to close application during test case or between test cases
Quit the application
    Quit Application

#Reset application Open Application can be reset while Appium session is kept alive
Reset the application
    Reset Application

#Scrolls from one element to another Key attributes for arbitrary elements are id and name See introduction for details about locating elements
Scroll to the element
    [Arguments]     ${start_locator}    ${end_locator}
    Scroll     ${start_locator}    ${end_locator}

#Scrolls down to element
Scroll down to element
    [Arguments]     ${locator}
    Scroll Down     ${locator}

#Scrolls up to element
Scroll up to element
    [Arguments]     ${locator}
    Scroll Up     ${locator}

#Set location
Set location of the device
    [Arguments]     ${latitude}      ${logitude}
    Set Location     ${latitude}      ${logitude}

#Sets the network connection Status
Set the network connection Status
    [Arguments]     ${connectionStatus}
    Set Network Connection Status   ${connectionStatus}

#Shake the device
Shake the device
    Shake

#Starts a screen record session
Start the Screen Recording
    Start Screen Recording

#Stops a screen record session
Stops the Screen Recording
    [Arguments]     ${filename}
    Stop Screen Recording     ${filename}

#Swipe from one point to another point, for an optional duration
Swipe the screen
    [Arguments]     ${start_x}     ${start_y}     ${offset_x}     ${offset_y}
    Swipe     ${start_x}     ${start_y}     ${offset_x}     ${offset_y}

#Swipe from one percent of the screen to another percent, for an optional duration Normal swipe fails to scale for different screen resolutions, this can be avoided using percent
Swipe the screen by percent
    [Arguments]     ${start_x}     ${start_y}     ${offset_x}     ${offset_y}
    Swipe By Percent     ${start_x}     ${start_y}     ${offset_x}     ${offset_y}

#Tap element identified by locator and location
Tap element by location
    [Arguments]     ${locator}     ${x}     ${y}    ${count}
    Tap     ${locator}     ${x}     ${y}    ${count}

#Waits until element specified with locator is visible
Wait untill element is visible on the screen
    [Arguments]     ${locator}     ${timeout}
    Wait Until Element Is Visible     ${locator}     ${timeout}

#Waits until text appears on current page
Wait Until Page Contains text on the screen
    [Arguments]     ${text}     ${timeout}
    Wait Until Page Contains     ${text}     ${timeout}

#Waits until text disappears from current page
Wait Until Page Does not Contains text on the screen
    [Arguments]     ${text}     ${timeout}
    Wait Until Page Does Not Contain     ${text}     ${timeout}

#Waits until element appears on current page
Wait Until Page Contains element on the screen
    [Arguments]     ${locator}     ${timeout}
    Wait Until Page Contains Element     ${locator}     ${timeout}

#Waits until element disappears from current page
Wait Until Page Does Not Contain Element element on the screen
    [Arguments]     ${locator}     ${timeout}
    Wait Until Page Does Not Contain Element     ${locator}     ${timeout}

#Verifies that the page contains the given number of elements located by the given xpath
Verify xpath count
    [Arguments]     ${locator}     ${count}
    Xpath Should Match X Times     ${locator}     ${count}

#Zooms in on an element a certain amount
Zoom the element
    [Arguments]     ${locator}     ${percent}
#    Zoom     ${locator}     ${percent}

#Switch to the context
Switch to the context
    [Arguments]     ${context}
    Switch To Context    ${context}

#Get the Current Context
Get the Current Context
    [return]    Get Current Context

#Get all context
Get all available context
    [return]    Get Contexts

Generate Random String With Defined Size
    [Arguments]    ${size}    ${type}
    ${str}=    Generate Random String    ${size}    ${type}
    [Return]    ${str}

Generate Random Number With Defined Size
    [Arguments]    ${size}    ${type}
    ${num}=    Generate Random String    ${size}    ${type}
    [Return]    ${num}

Static wait for
    [Arguments]     ${Second}
    Sleep    ${Second}s

Verify both values are equal
    [Arguments]    ${val1}  ${val2}
    Should Be Equal     ${val1}     ${val2}

Scroll at the bottom of the page
    Execute Script      window.scrollTo(0,document.body.scrollHeight)

Scroll at the top of the page
    Execute Script      window.scrollTo(0,0)


Perform JavaScript Action
    [Arguments]    ${script}
    Execute Script    ${script}

Get matching WebElement by xpath
    [Arguments]      ${locator}
    [return]    Get Matching Xpath Count     ${locator}