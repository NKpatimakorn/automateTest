*** Settings ***
Library    SeleniumLibrary

*** Variables *** 

*** Test Cases ***
Home page should load
    [Documentation]    Validate load home screen
    [Tags]             TS001_TC001    Home
    Log                Start TS001_TC001
    Open Browser       https://automationplayground.com/crm/    chrome
    Close Browser

*** Keywords ***
