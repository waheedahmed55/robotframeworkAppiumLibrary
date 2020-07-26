*** Settings ***
Library     ExcelLibrary
Library     DataDriver  file=${EXECDIR}/TestData/FormData.xlsx     sheet_name=Sheet1
Test Template   DataDriven Test cases

*** Test Cases ***
Perform action on ${Input_Field} ${Dropdown} ${ButtonText}


*** Keywords ***
DataDriven Test cases
    [Arguments]     ${Input_Field}      ${Dropdown}     ${ButtonText}
    log to console  ${Input_Field}      ${Dropdown}     ${ButtonText}

