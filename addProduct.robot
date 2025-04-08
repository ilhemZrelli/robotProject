*** Settings ***
Library    SeleniumLibrary
Resource   resources.resource
Suite Setup       Open Browser    ${LOGIN_URL}    chrome
Suite Teardown    Close Browser
*** Variables ***
${VALID_USERNAME}    standard_user
${VALID_PASSWORD}    secret_sauce
*** Test Cases ***
Add product should Succeed
    Enter Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Click Login
    Sleep    5s
    Page Should Contain    Products
    Add to card
    Sleep    5s
    Open PANIER
    Page Should Contain    Sauce Labs Backpack
Finaliser la commande
    Enter Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Click Login
    Sleep    5s
    Page Should Contain    Products
    Add to card
    Sleep    5s
    Open PANIER
    Sleep    5s
    Go checkout
    Sleep    5s
    Add informations
    Continue
    Sleep    5s
    FINISH
    Sleep    5s
    Page Should Contain    Thank you for your order!
    