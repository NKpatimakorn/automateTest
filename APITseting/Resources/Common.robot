*** Settings ***
Library    SeleniumLibrary
Library    RequestsLibrary

*** Variables ***
${BROWSER}             Chrome
${URL}                 https://reqres.in/api


*** Keywords ***
Start Test
     Create Session    api    ${URL}  
     Set selenium timeout    10s
End Test
    Close Browser

