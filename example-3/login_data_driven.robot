*** Settings ***
Documentation     A test suite with login tests Using Data Driven.

Resource          resource.robot
Suite Setup       Close All Browsers
Test Template     Login With Credentials On a Browser

*** Test Cases ***   USERNAME              PASSWORD              EXPECTED PAGE       BROWSER  
Invalid Username     invalid name          ${VALID PASSWORD}     ${ERROR PAGE}       ${EDGE}
Invalid Password     ${VALID USERNAME}     invalid password      ${ERROR PAGE}       ${EDGE}
Invalid Credentials  invalid name          invalid password      ${ERROR PAGE}       ${EDGE}
Empty Username       ${EMPTY}              ${VALID PASSWORD}     ${LOGIN PAGE}       ${EDGE}
Empty Password       ${VALID USERNAME}     ${EMPTY}              ${LOGIN PAGE}       ${EDGE}
Empty Credentials    ${EMPTY}              ${EMPTY}              ${LOGIN PAGE}       ${EDGE}
Valid Credentials    ${VALID USERNAME}     ${VALID PASSWORD}     ${WELCOME PAGE}     ${EDGE}

Invalid Username     invalid name          ${VALID PASSWORD}     ${ERROR PAGE}       ${CHROME}
Invalid Password     ${VALID USERNAME}     invalid password      ${ERROR PAGE}       ${CHROME}
Invalid Credentials  invalid name          invalid password      ${ERROR PAGE}       ${CHROME}
Empty Username       ${EMPTY}              ${VALID PASSWORD}     ${LOGIN PAGE}       ${CHROME}
Empty Password       ${VALID USERNAME}     ${EMPTY}              ${LOGIN PAGE}       ${CHROME}
Empty Credentials    ${EMPTY}              ${EMPTY}              ${LOGIN PAGE}       ${CHROME}
Valid Credentials    ${VALID USERNAME}     ${VALID PASSWORD}     ${WELCOME PAGE}     ${CHROME}

Invalid Username     invalid name          ${VALID PASSWORD}     ${ERROR PAGE}       ${FIREFOX}
Invalid Password     ${VALID USERNAME}     invalid password      ${ERROR PAGE}       ${FIREFOX}
Invalid Credentials  invalid name          invalid password      ${ERROR PAGE}       ${FIREFOX}
Empty Username       ${EMPTY}              ${VALID PASSWORD}     ${LOGIN PAGE}       ${FIREFOX}
Empty Password       ${VALID USERNAME}     ${EMPTY}              ${LOGIN PAGE}       ${FIREFOX}
Empty Credentials    ${EMPTY}              ${EMPTY}              ${LOGIN PAGE}       ${FIREFOX}
Valid Credentials    ${VALID USERNAME}     ${VALID PASSWORD}     ${WELCOME PAGE}     ${FIREFOX}

*** Keywords ***
Login With Credentials On a Browser
    [Arguments]    ${username}    ${password}    ${expected page}    ${browser}
    Open Browser To Login Page    ${browser}
    User "${username}" logs in with password "${password}"
    Title Should Be  ${expected page}
    [Teardown]    Close All Browsers