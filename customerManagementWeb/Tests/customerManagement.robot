*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Page objects/LoginPage.robot
Resource    ../Resources/Page objects/HomePage.robot
Resource    ../Resources/Page objects/ContactsPage.robot
Resource    ../Resources/Page objects/LogOutPage.robot
Resource    ../Resources/Page objects/AddCustomerPage.robot
Resource    ../Resources/Page objects/AddCustomerSuccessPage.robot
Test Setup       Start Test
Test Teardown    End Test

#robot -d crm/Results crm/Tests/customerManagement.robot

Library    OperatingSystem

*** Variables *** 

*** Test Cases ***
[TS001_TC001]Home page should load
    [Documentation]                Validate load home screen
    [Tags]                         TS001_TC001    Home    smoke
    Log                            Start TS001_TC001
    HomePage.Load Home Page

[TS001_TC002]Login should succeed with valid credentials
    [Documentation]                Validate Login with valid credentials
    [Tags]                         TS001_TC002    login    smoke
    Log                            Start TS001_TC002
    Given LoginPage.Click the sign in link
    And LoginPage.Check redirection to login page
    And LoginPage.Login to the system with valid credentials              
    When LoginPage.Click the login Button
    Then ContactsPage.Contacts page loads

[TS001_TC003]Login should fail with missing credentials
    [Documentation]                Validate Login with missing credentials
    [Tags]                         TS001_TC003    login    functional
    Log                            Start TS001_TC003
    Given LoginPage.Click the sign in link
    And Log                        skipping credentials        
    When LoginPage.Click the login Button
    Then LoginPage.Check redirection to login page

[TS001_TC004]"Remember me" checkbox should persist email address
    [Documentation]                Validate "Remember me" checkbox
    [Tags]                         TS001_TC004    Login    functional
    Log                            Start TS001_TC004
    Given LoginPage.Click the sign in link
    And LoginPage.Login to the system with valid credentials
    When LoginPage.Click "Remember me" checkbox     
    And LoginPage.Click the login Button        
    And ContactsPage.Contacts page loads
    And LogOutPage.Click "Logout" link
    And LogOutPage.Check redirection to logout page
    And LoginPage.Click the sign in link
    Then LoginPage.Login page loads with email pre-populated

[TS001_TC005]Should be able to log out
    [Documentation]                Validate log out function
    [Tags]                         TS001_TC005    Login    Functional
    Log                            Start TS001_TC005
    Given loginPage.Pre-login
    When LogOutPage.Click "Logout" link
    Then LogOutPage.Check redirection to logout page

[TS001_TC006]Customers page should display multiple customers
    [Documentation]                Validate Customers page display multiple customers
    [Tags]                         TS001_TC006    Contacts    smoke
    Log                            Start TS001_TC006
    Given LoginPage.Pre-login
    Then ContactsPage.Examine customers grid for multiple records   

[TS001_TC007]Should be able to add new customer
    [Documentation]                Validate add new customer
    [Tags]                         TS001_TC007    Contacts    smoke
    Log                            Start TS001_TC007
    LoginPage.Pre-login

    Given ContactsPage.Click "New Customer" button
    And AddCustomerPage.Fill the required field
    When AddCustomerPage.Click "Submit" button
    Then AddCustomerSuccessPage.Add customer success page loads


[TS001_TC008]Should be able to cancel adding new customer
    [Documentation]                Validate cancel adding new customer
    [Tags]                         TS001_TC008    Contacts    Functional
    Log                            Start TS001_TC008
    LoginPage.Pre-login

    Given ContactsPage.Click "New Customer" button
    And AddCustomerPage.Fill the required field
    When AddCustomerPage.Click "Cancle" button
    Then ContactsPage.Contacts page loads
