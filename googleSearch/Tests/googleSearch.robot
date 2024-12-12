*** Settings ***
Documentation  Google Search Functionality
Library  SeleniumLibrary
Resource        ../Resources/commonFunctionality.robot
*** Variables ***
${Search_keyword}  mobile
@{SEARCH_KEYWORD_LISTS}    red    blue    green    yellow

*** Test Cases *** 
TS001_TC001_Verify Google Search Functionality
    [Documentation]  This test case verify the google search functionality
    [Tags]  Searching_Functionality
    Start testcase
    Verify search result(${Search_keyword})
    Finish testcase


TS001_TC002_Verify Google Search with color word
    Start testcase
    Verify search result    ${SEARCH_KEYWORD_LISTS[0]}
    Verify search result    ${SEARCH_KEYWORD_LISTS[1]}
    Verify search result    ${SEARCH_KEYWORD_LISTS[2]}
    Verify search result    ${SEARCH_KEYWORD_LISTS[3]}
    Finish testcase

*** Keywords ***
Verify search result
    [Arguments]    ${input}
    Input Text    //*[@id="APjFqb"]    ${input}   
    Press Keys    //*[@id="APjFqb"]    ENTER
    Wait Until Page Contains    ${input}
