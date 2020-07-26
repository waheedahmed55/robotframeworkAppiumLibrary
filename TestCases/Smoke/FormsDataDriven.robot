*** Settings ***
Resource         ../../Utility/Setup.robot
Resource         ../../Utility/CommonKeywords.robot
Resource         ../../TestData/ApplicationProperties.robot
Resource         ../../Helper/FormsPageHelper.robot
Library          ExcelLibrary
Library          DataDriver  file=${EXECDIR}/TestData/FormData.xlsx     sheet_name=Sheet1
Test Template    DataDriven Test cases
Suite Setup      Open the application in device
Test Setup       Open the option     Home
Suite Teardown   Close the application

*** Test Cases ***
Perform action on ${Input_Field} ${Dropdown} ${ButtonText}


*** Keywords ***
DataDriven Test cases
    [Arguments]     ${Input_Field}      ${Dropdown}     ${ButtonText}
    Open the option     Forms
    Enter data in the field     ${Input_Field}
    Verify data from the result field     ${Input_Field}
    Click on Radio button
    Verify text is available on the page    Click to turn the switch OFF
    Click on Radio button
    Verify text is available on the page    Click to turn the switch ON
    Select value from dropdown      ${Dropdown}
    Click on Active button
    Verify text is available on the page    ${ButtonText}
    Click on OK button
