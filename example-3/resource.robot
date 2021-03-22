*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           Selenium2Library    run_on_failure=Capture Page Screenshot

*** Variables ***
${SERVER}           localhost:7272
${DELAY}            0

${LOGIN URL}        http://${SERVER}

${LOGIN PAGE}      Login Page
${ERROR PAGE}      Error Page
${WELCOME PAGE}    Welcome Page


${VALID USERNAME}   demo
${VALID PASSWORD}   mode

${USERNAME FIELD}   username
${PASSWORD FIELD}   password
${LOGIN FIELD}      login


${CHROME}           Chrome
${FIREFOX}          Firefox
${EDGE}             Edge

*** Keywords ***
User "${username}" logs in with password "${password}"
    Input username    ${username}
    Input password    ${password}
    Submit credentials

Open Browser To Login Page
    [Arguments]    ${browser}
    Open Browser    ${LOGIN URL}    ${browser}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Title Should Be  ${LOGIN PAGE}

Go To Login Page
    Go To    ${LOGIN URL}
    Login Page Should Be Open

Input Username
    [Arguments]    ${username}
    Input Text    ${USERNAME FIELD}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${PASSWORD FIELD}    ${password}

Submit Credentials
    Click Button    ${LOGIN FIELD}