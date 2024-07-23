*** Settings ***

Resource    ../resources/base.resource

*** Test Cases ***
Deve escolher o nivel Padawan

    Start session
    Get started

    Navigate to           Formulários
    Go to item            Cadastro     Crie sua conta.

    Select Level          Padawan

    close session

Deve escolher o nivel jedi

    Start session
    Get started

    Navigate to           Formulários
    Go to item            Cadastro     Crie sua conta.

    Select Level          Jedi

    close session

Deve escolher o nivel Sith

    Start session
    Get started

    Navigate to           Formulários
    Go to item            Cadastro     Crie sua conta.

    Select Level          Sith

    close session

Deve escolher o nivel Outros

    Start session
    Get started

    Navigate to           Formulários
    Go to item            Cadastro     Crie sua conta.

    Select Level          Outros

    close session


*** Keywords ***
Select Level
    [Arguments]          ${level}

    Click Element                    id=com.qaxperience.yodapp:id/spinnerJob
    Wait Until Element Is Visible    class=android.widget.ListView
    Click Text                       ${level}   