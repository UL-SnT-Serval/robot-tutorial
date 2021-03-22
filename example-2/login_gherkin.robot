*** Settings ***
Documentation     A test suite with login tests in Gherkin style.

Resource          resource.robot
Suite Setup       Close All Browsers
Test Teardown     Close All Browsers

*** Test Cases ***
#As a user, I want to login to the Juice Shop website so that I can browse it
As a user, I want to be able to login with my username and password
    Given browser is opened to login page
    When user "demo" logs in with password "mode"
    Then welcome page should be open

As a user, I am not able to login with my username and a wrong password
    Given browser is opened to login page
    When user "demo" logs in with password "invalid password"
    Then error page should be open