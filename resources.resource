*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${LOGIN_URL}    https://www.saucedemo.com
${USERNAME_INPUT}    id=user-name
${PASSWORD_INPUT}    id=password
${LOGIN_BUTTON}      id=login-button
${ADD_TO_CARD }    id=add-to-cart-sauce-labs-backpack
${PANIER}    xpath=//a[contains(@class, 'shopping_cart_link')]
${checkout}    id=checkout
${FIRSTNAME}    id=first-name
${LASTNAME}    id=last-name
${ZIPCODE}    id=postal-code
${CONTINUE}    id=continue
${FINISH}    id=finish
*** Keywords ***
Open Login Page
    Open Browser    ${LOGIN_URL}    chrome
    Maximize Browser Window

Enter Credentials
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_INPUT}    ${username}
    Input Text    ${PASSWORD_INPUT}    ${password}

Click Login
    Click Button    ${LOGIN_BUTTON}
Add to card
   Click Button    ${ADD_TO_CARD }
Open PANIER
    Click Element    ${PANIER}
Go checkout
    Click Element    ${checkout}
Add informations
    Input Text    ${FIRSTNAME}    ilhem
    Input Text    ${LASTNAME}    iiiiii
    Input Text    ${ZIPCODE}   tmmmmmm
Continue
    Click Element    ${CONTINUE}
FINISH
    Click Element    ${FINISH}