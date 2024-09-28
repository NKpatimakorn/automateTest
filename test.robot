*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        http://x.com

*** Test Cases ***
Open twitter Test
    Open Browser    ${URL}    ${BROWSER}
    [Teardown] 
