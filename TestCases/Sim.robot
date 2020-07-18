*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
Open the Application
    Open Application    remote_url=http://localhost:4723/wd/hub     device=R38MC00R9KJ      platformName=Android        deviceName=AndroidDevice        automationName=uiautomator2     app=${CURDIR}\\..\\App\\DemoApp.apk      #appPackage=com.wdiodemoapp     #appActivity=com.wdiodemoapp.MainActivity
    Close Application