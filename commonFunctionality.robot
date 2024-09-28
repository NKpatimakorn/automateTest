*** Settings ***
Documentation  Google Search Functionality
Library  SeleniumLibrary

*** Variables ***
${URL}     https://www.google.com
${BROWSER}    chrome


*** Keywords ***
Start testcase
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    5
    Close Browser

Finish testcase
    [Teardown]
    Close Browser  

