
*** Settings ***
Documentation     A resource file with reusable keywords and variables.
...
...               The system specific keywords created here form our own
...               domain specific language. They utilize keywords provided
...               by the imported SeleniumLibrary.
Library           Selenium2Library

*** Variables ***
${SERVER}           localhost:7272
${BROWSER}          Chrome
${DELAY}            0

${LOGIN URL}        http://${SERVER}/login.html
${WELCOME URL}      http://${SERVER}/welcome.html
${ERROR URL}        http://${SERVER}/error.html

${USERNAME FIELD}   xpath:/html/body/div/form/table/tbody/tr[1]/td[2]/input
${PASSWORD FIELD}   xpath:/html/body/div/form/table/tbody/tr[2]/td[2]/input
${LOGIN FIELD}      xpath:/html/body/div/form/table/tbody/tr[3]/td[2]/input

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}
    Login Page Should Be Open

Login Page Should Be Open
    Title Should Be    Login Page

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

Welcome Page Should Be Open
    Location Should Be    ${WELCOME URL}
    Title Should Be    Welcome Page