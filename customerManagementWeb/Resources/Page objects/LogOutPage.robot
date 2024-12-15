*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${Sign_Out_BUTTON} =         Sign Out
${SIGN_OUT_PAGE_HEADER} =    Signed Out
*** Keywords ***
Click "Logout" link
    Click link    ${Sign_Out_BUTTON}

Check redirection to logout page
    Wait Until Page Contains       ${SIGN_OUT_PAGE_HEADER}