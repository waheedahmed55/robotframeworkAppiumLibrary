*** Settings ***
Library     Process
Library     AppiumLibrary
Resource    ../TestData/ApplicationProperties.robot
Variables   ../App/StartProcess.py

*** Keywords ***
Open the application in device
    ${match}    ${value}    Run Keyword And Ignore Error    Should Contain      ${remote_url}    localhost
    Run Keyword If      '${match}' == 'PASS'     call method     ${s}    startAppiumServer
    Sleep   5s
    log to console      RUNNING...
    Open application    remote_url=${remote_url}     device=${deviceId}     os_version=${os_version}      platformName=${platformName}    deviceName=${deviceName}    automationName=${automationName}       app=${appPath}

Close the application
    close all applications
    ${match}    ${value}    Run Keyword And Ignore Error    Should Contain      ${remote_url}    localhost
    Run Keyword If      '${match}' == 'PASS'     call method     ${s}    stopAppiumServer

Take screenshot
    [Arguments]  ${FileName}
    ${now}    Evaluate  '{dt.second}{dt.minute}{dt.hour}{dt.day}{dt.month}{dt.year}'.format(dt=datetime.datetime.now())    modules=datetime
    Capture Page Screenshot    ${OUTPUTDIR}/ScreenShot/${FileName}_${now}.png