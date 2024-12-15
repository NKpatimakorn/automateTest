*** Settings ***
Library    SeleniumLibrary
*** Variables ***
${HOME_PAGE_HEADER} =    Customers Are Priority One!

*** Keywords ***

Load Home Page
    Wait Until Page Contains        ${HOME_PAGE_HEADER}