*** Variables ***
#######DEVICE PROPERTIES START
${appPath}                  ${CURDIR}\\..\\App\\DemoApp.apk
${deviceID}                 R38MC00R9KJ
${os_version}               10
${remote_url}               http://localhost:4723/wd/hub

######FOR BROWSER STACK COMMENT THE SAME VARIABLE FROM DEVICE PROPERTY AND UN_COMMENT THESE

#${appPath}          bs://fa131839a193f99b262befd0628062da7ca463d0
#${deviceID}         Google Pixel 3
#${os_version}       9.0
#${remote_url}       https://waheedahmed4:6f1fmVAzjqUiLspnJnJJ@hub-cloud.browserstack.com/wd/hub

######DEVICE PROPERTIES END

${platformName}             Android
${deviceName}               AndroidDevice
${automationName}           uiautomator2
${StartAppiumServerPath}    ${CURDIR}\\..\\App\\StartAppiumServer.bat
${StopAppiumServerPath}     ${CURDIR}\\..\\App\\StopAppiumServer.bat

######APPLICATION PROPERTIES
${InvalidUserName}          aaa
${InvalidUserPassword}      aaa
${ValidUserName}            waheedahmed55@gmail.com
${ValidUserPassword}        password




