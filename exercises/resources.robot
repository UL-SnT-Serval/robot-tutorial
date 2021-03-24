*** Settings ***

Library  Selenium2Library

*** Variables ***

${BROWSER}           Chrome
${DELAY}             0

${LOGIN URL}         https://www.saucedemo.com/
${WELCOME URL}       https://www.saucedemo.com/inventory.html

${USERNAME}          standard_user
${PASSWORD}          secret_sauce

${USERNAME FIELD}    user-name
${PASSWORD FIELD}    password
${LOGIN FIELD}       login-button


${WELCOME PAGE}      Swag Labs
${LOGIN PAGE}        Swag Labs

*** Keywords ***

Browser is opened to login page
    Open browser to login page

User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials
    
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    ${LOGIN PAGE}

Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD FIELD}    ${password}

Submit Credentials
    Click Button    ${LOGIN FIELD}

Welcome Page Should Be Open
    Title Should Be   ${WELCOME PAGE}
    Location Should Be   ${WELCOME URL}
