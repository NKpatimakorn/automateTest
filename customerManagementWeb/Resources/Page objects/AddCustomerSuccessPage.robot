*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${ADD_CUSTOMER_SUCCESS_PAGE_HEADER} =     Success! New customer added.

*** Keywords ***
Add customer success page loads
    Wait Until Page Contains        ${ADD_CUSTOMER_SUCCESS_PAGE_HEADER}
