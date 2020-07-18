*** Settings ***
Resource         ../Utility/Setup.robot
Resource         ../Utility/CommonKeywords.robot
Resource         ../Helper/LoginRegistrationPageHelper.robot
Resource         ../TestData/ApplicationProperties.robot
Suite Setup      Open the application in device
Test Setup       Open the option     Home
Suite Teardown   Close the application

*** Test Cases ***
Verify invalid Login
    Verify android large icon is available
    Open the option     Login
    Login to the application    ${InvalidUserName}     ${InvalidUserPassword}
    Verify text is available on the page    Please enter a valid email address
    Verify text is available on the page    Please enter at least 8 characters

Verify valid Login
    Verify android large icon is available
    Open the option     Login
    Login to the application    ${ValidUserName}     ${ValidUserPassword}
    Verify text is available on the page    You are logged in!
    Take screenshot     LoginSuccess
    Click on success ok button

Verify invalid signUp
    Close the application
    Open the application in device
    Open the option     Home
    Verify android large icon is available
    Open the option     Login
    Sign up to the application    ${ValidUserName}     ${ValidUserPassword}     ${ValidUserName}
    Verify text is available on the page    Some fields are not valid!
    Click on the Try again
    Verify text is available on the page    Please enter the same password

Verify valid signUp
    Verify android large icon is available
    Open the option     Login
    Sign up to the application    ${ValidUserName}     ${ValidUserPassword}     ${ValidUserPassword}
    Verify text is available on the page    You successfully signed up!
    Take screenshot     RegistrationSuccess
    Click on success ok button