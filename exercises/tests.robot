*** Settings ***

Resource          resources.robot

Suite Setup       Close All Browsers
Test Teardown     Close All Browsers

*** Test Cases ***

#As a customer, I want to login to the Juice Shop website so that I can browse it
As a costumer, I login with a valid username and password
    Given browser is opened to login page
    When user "${USERNAME}" logs in with password "${PASSWORD}"
    Then welcome page should be open  

#As a customer, I want to add a product in my cart so that I can later on buy it

#As a customer, I want to review my cart so that I can make adjustments prior to checkout

#As a customer, I want to check out my cart, so that I can get my product shipped to me.
