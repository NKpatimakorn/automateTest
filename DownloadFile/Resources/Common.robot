*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}             Chrome    
${URL}                 https://testfile.org/


*** Keywords ***
Start Test
     Open Browser    ${URL}   ${BROWSER}  
     Set selenium timeout    10s
     Set Window Size    1080    2000
     
End Test
    Close Browser
