*** Settings ***
Library    SeleniumLibrary
Resource   resources.resource
Suite Setup       Open Browser    ${LOGIN_URL}    chrome
Suite Teardown    Close Browser
*** Variables ***
${VALID_USERNAME}    standard_user
${VALID_PASSWORD}    secret_sauce
${INCORRECT_USERNAME}    user
*** Test Cases ***
Valid Login Should Succeed
    Enter Credentials    ${VALID_USERNAME}    ${VALID_PASSWORD}
    Click Login
    Sleep    5s
    Page Should Contain    Products
Login should fail with incorrect username
    Enter Credentials    ${INCORRECT_USERNAME}    ${VALID_PASSWORD}
    Click Login
    Sleep    5s
    Page Should Contain   Epic sadface: Username and password do not match any user in this service