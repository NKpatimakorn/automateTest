*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}             Chrome
${URL}                 https://webqr.com/index.html


*** Keywords ***
Start Test
     Open Browser    ${URL}   ${BROWSER}
     Set selenium timeout    10s
End Test
    Close Browser
    