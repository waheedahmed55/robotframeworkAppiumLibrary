*** Settings ***
Resource        ../PageObjects/LoginRegistrationPageObjects.robot
Resource        ../Utility/AppiumLibraryKeywords.robot

*** Keywords ***
Click on Login Link
    Click on an element     ${LoginLink}

Click on Signup Link
    sleep   2s
    Click on an element     ${SignUpLink}
    sleep   3s

Enter username
    [Arguments]     ${text}
    Enter text in the field     ${EmailField}   ${text}

Enter password
    [Arguments]     ${text}
    Enter text in the field     ${PasswordField}    ${text}

Enter confirm password
    [Arguments]     ${text}
    Enter text in the field     ${ConfirmPasswordField}    ${text}

Click on Login button
    Click on an element     ${LoginButton}

Click on Sign in button
    Click on an element     ${SignUPButton}

Click on success ok button
    Click on an element     ${SuccessOk}

Click on the Try again
    Click on text   TRY AGAIN   true