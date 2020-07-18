*** Settings ***
Resource        ../PageObjects/FormsPageObjects.robot
Resource        ../Utility/AppiumLibraryKeywords.robot

*** Keywords ***
Enter data in the field
     [Arguments]        ${data}
     Enter text in the field    ${TextInputFiled}       ${data}

Verify data from the result field
    [Arguments]        ${data}
    ${value}=       Get element text    ${TextInputResult}
    Should Be Equal     ${value}    ${data}     #Should Be Equal keyword from stringlibrary

Click on Radio button
    Click on an element     ${RadioButton}

Select value from dropdown
    [Arguments]        ${option}
    Click on an element     ${DropDown}
    Click on text       ${option}   true

Click on Active button
    Click on an element     ${ActiveButton}

Click on OK button
    Click on text       OK   true