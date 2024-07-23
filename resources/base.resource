*** Settings ***

Library         AppiumLibrary

*** Variables ***
${START}    QAX


*** Keywords ***
Start session

    Open Application    http://localhost:4723    
    ...                platformName=Android
    ...                deviceName=Android Emulato
    ...                automationName=UIAutomator2
    ...                app=${EXECDIR}/app/yodapp-beta.apk
    ...                udid=emulator-5554
    ...                autoGrantPermissions=true
Get started
    Wait Until Page Contains         ${START}       5    
    Click Text                       ${START}

Navigate to
    [Arguments]                      ${item_text} 
    ${hambuger}    Set Variable    xpath=//android.widget.ImageButton[@content-desc="Open navigation drawer"]

    Wait Until Element Is Visible    ${hambuger}     5
    Click Element                    ${hambuger}

    ${menu_item}    Set Variable    xpath=//*[@resource-id="com.qaxperience.yodapp:id/navView"]//*[@text="${item_text}"]

    Wait Until Element Is Visible    ${menu_item}     5
    Click Element                    ${menu_item}
    
Go to item 
    [Arguments]      ${item}         ${checkpoit}
    Wait Until Page Contains         ${item}          5
    Click Text                       ${item}
    Wait Until Page Contains         ${checkpoit}  

close session
    Close Application