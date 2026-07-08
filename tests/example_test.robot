*** Settings ***
Library     AppiumLibrary
Suite Setup     Open Test Application
Suite Teardown     Close Application

*** Variables ***
${REMOTE_URL}       http://127.0.0.1:4723
${PLATFORM_NAME}    Android
${DEVICE_NAME}      emulator-5554
${APP_PACKAGE}      com.android.settings
${APP_ACTIVITY}     .Settings

*** Test Cases ***
Abrir Configuracoes Do Android
    [Documentation]    Smoke test: abre o app de Configuracoes do sistema Android
    Wait Until Page Contains Element    id=android:id/list    timeout=15s

*** Keywords ***
Open Test Application
    Open Application    ${REMOTE_URL}
    ...    platformName=${PLATFORM_NAME}
    ...    deviceName=${DEVICE_NAME}
    ...    appPackage=${APP_PACKAGE}
    ...    appActivity=${APP_ACTIVITY}
    ...    automationName=UiAutomator2
