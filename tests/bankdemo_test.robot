*** Settings ***
Library     AppiumLibrary
Suite Setup     Open Test Application
Suite Teardown     Close Application

*** Variables ***
${REMOTE_URL}       http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${DEVICE_NAME}      emulator-5554
${APP_PATH}         ${CURDIR}/../apps/bankdemo.apk
${APP_PACKAGE}      com.example.qabankdemo
${APP_ACTIVITY}     .MainActivity

*** Test Cases ***
Abrir BankDemoApp
    [Documentation]    Smoke test: instala e abre o BankDemoApp, confirma que a UI renderizou
    Wait Until Page Contains Element    xpath=//*    timeout=20s
    Capture Page Screenshot

*** Keywords ***
Open Test Application
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    app=${APP_PATH}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=UiAutomator2
