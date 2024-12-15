*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL} =    https://automationplayground.com/crm/ 
@{BROWSER} =    chrome

*** Keywords ***
Start Test
     Open Browser    ${URL}   @{BROWSER}

End Test
    Close Browser
    
