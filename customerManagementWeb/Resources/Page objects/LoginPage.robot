*** Settings ***
Library    SeleniumLibrary
Resource    ./ContactsPage.robot
*** Variables ***
${LOGIN_PAGE_HEADER} =       Login
${EMAIL_FIELD} =             //*[@id="email-id"]
${PASSWORD_FIELD} =          //*[@id="password"]
${LOGIN_BUTTON} =            id=submit-id
${VALID_EMAIL} =             email@gmail.com
${VALID_PASSWORD} =          P@ssw0rd
${REMEMBER_ME_CHECKBOX} =    //*[@id="remember"]   
*** Keywords ***

Click the sign in link
    Click Link                     Sign In

Check redirection to login page
    Wait Until Page Contains       ${LOGIN_PAGE_HEADER}


Login to the system with valid credentials
    Log                     login with id=${VALID_EMAIL} password=${VALID_PASSWORD}
    Input Text              ${EMAIL_FIELD}        ${VALID_EMAIL}
    Input Password          ${PASSWORD_FIELD}     ${VALID_PASSWORD}

Click the login Button
    Click Button            ${LOGIN_BUTTON} 

Click "Remember me" checkbox
    Select Checkbox         ${REMEMBER_ME_CHECKBOX}  

Login page loads with email pre-populated
    Should Be Equal         ${EMAIL_FIELD}    ${VALID_EMAIL}

Pre-login
    Click the sign in link
    Check redirection to login page
    Login to the system with valid credentials              
    Click the login Button
    ContactsPage.Contacts page loads 