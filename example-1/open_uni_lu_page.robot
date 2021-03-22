*** Settings ***
Library  Selenium2Library

*** Test Cases ***
Visit the university website
    open the browser
    take a picture for the report
    close the browser

*** Keywords ***
open the browser
    Open Browser  ${HOMEPAGE}  ${BROWSER}

close the browser
    Close All Browsers

take a picture for the report
    Capture Page Screenshot

*** Variables ***
${HOMEPAGE}  http://www.uni.lu
${BROWSER}   Chrome