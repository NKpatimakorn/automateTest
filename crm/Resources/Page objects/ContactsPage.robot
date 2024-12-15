*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${CUSTOMER_SERVICE_PAGE_HEADER} =    Our Happy Customers
${TABLE_CUSTOMERS} =     id=customers
${ROW_OF_TABLE_CUSTOMERS} =     //*[@id="customers"]/tbody/tr
${NEW_CUSTOMER_BUTTON} =     id=new-customer
*** Keywords ***

Contacts page loads
    Wait Until Page Contains        ${CUSTOMER_SERVICE_PAGE_HEADER}


Examine customers grid for multiple records
    Wait Until Element Is Visible        ${TABLE_CUSTOMERS}
    ${ROW_OF_TABLE_CUSTOMERS} =    Get Element Count    ${ROW_OF_TABLE_CUSTOMERS}
    Should Be True    ${ROW_OF_TABLE_CUSTOMERS} > 1

Click "New Customer" button
    Click Link    ${NEW_CUSTOMER_BUTTON}