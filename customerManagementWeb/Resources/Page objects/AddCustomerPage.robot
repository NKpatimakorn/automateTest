*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${ADD_CUSTOMER_PAGE_HEADER} =    Add Customer
${NEW_EMAIL_FIELD} =        id=EmailAddress
${NEW_EMAIL} =                newEmail@gmail.com
${FIRST_NAME_FIELD} =        id=FirstName
${FIRST_NAME} =    firstname
${LAST_NAME_FIELD} =        id=LastName
${LAST_NAME} =    lastname
${CITY_FIELD} =         id=City
${CITY} =    City
${STATE_LIST} =    id=StateOrRegion
${GENDER_RADIO} =   gender
${OPTIONAL_CHECKBOX} =    name=promos-name
${SUBMIT_BUTTON} =     //*[@id="loginform"]/div/div/div/div/form/button
${CANCLE_BUTTON} =     //*[@id="loginform"]/div/div/div/div/form/a

*** Keywords ***

Add customer page loads
    Wait Until Page Contains        ${ADD_CUSTOMER_PAGE_HEADER}

Type customer email
    Input Text    ${NEW_EMAIL_FIELD}    ${NEW_EMAIL}

Type customer first name
    Input Text    ${FIRST_NAME_FIELD}    ${FIRST_NAME}

Type customer last name    
    Input Text    ${LAST_NAME_FIELD}    ${LAST_NAME}

Type customer city
    Input Text    ${CITY_FIELD}    ${CITY}

Select customer state
    Select From List By Value    ${STATE_LIST}    HI

Select gender
    Select Radio Button    ${GENDER_RADIO}  male

Optionally check promotion checkbox
    Select Checkbox    ${OPTIONAL_CHECKBOX}

Click "Submit" button
    Click Button    ${SUBMIT_BUTTON}

Click "Cancle" button
    Click Link    ${CANCLE_BUTTON}

Fill the required field
    Add customer page loads
    Type customer email
    Type customer first name
    Type customer last name
    Type customer city
    Select customer state
    Select gender
    Optionally check promotion checkbox


