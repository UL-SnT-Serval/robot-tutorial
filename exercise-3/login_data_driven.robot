*** Settings ***
Documentation     A test suite with login tests Using Data Driven.

Resource          resource.robot
Suite Setup       Close All Browsers
Test Template     Login With Invalid Credentials Should Fail

*** Test Cases ***   USERNAME              PASSWORD             BROWSER       EXPECTED PAGE
Invalid Username     invalid name          ${VALID PASSWORD}    ${CHROME}     ${ERROR PAGE}
Invalid Password     ${VALID USERNAME}     invalid password     ${CHROME}     ${ERROR PAGE}
Invalid Credentials  invalid name          invalid password     ${CHROME}     ${ERROR PAGE}
Empty Username       ${EMPTY}              ${VALID PASSWORD}    ${CHROME}     ${LOGIN PAGE}
Empty Password       ${VALID USERNAME}     ${EMPTY}             ${CHROME}     ${LOGIN PAGE}
Empty Credentials    ${EMPTY}              ${EMPTY}             ${CHROME}     ${LOGIN PAGE}
Valid Credentials    ${VALID USERNAME}     ${VALID PASSWORD}    ${CHROME}     ${WELCOME PAGE}

*** Keywords ***
Login With Invalid Credentials Should Fail
    [Arguments]    ${username}    ${password}    ${browser}    ${expected page}
    Open Browser To Login Page    ${browser}
    User "${username}" logs in with password "${password}"
    Title Should Be  ${expected page}
    [Teardown]    Close All Browsers