*** Settings ***
Library           Collections
*** Test Cases ***

Work with multple elements
    [Tags]      Test
    @{MyList}=      Create List
    Append To List    ${MyList}    a
    Append To List    ${MyList}    b
    Append To List    ${MyList}    c
    Append To List    ${MyList}    d
    Append To List    ${MyList}    abcd
    Log List    ${MyList}
    List Should Contain Value    ${MyList}    abcd
    ${val}=     Get Length      ${MyList}
    log to console      ${val}
    FOR     ${i}   IN RANGE     ${val}
        log to console      ${MyList}[${i}]
    END