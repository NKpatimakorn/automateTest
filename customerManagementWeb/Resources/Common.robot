*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL} =        https://automationplayground.com/crm/ 
@{BROWSER} =    chrome

*** Keywords ***
Start Test
     Open Browser    ${URL}   @{BROWSER}
     Set selenium timeout    10s
End Test
    Close Browser
    
