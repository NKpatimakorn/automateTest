*** Settings ***
Resource    ../Resources/Common.robot
Library    RequestsLibrary

Test Setup       Start Test
Test Teardown    End Test



*** Test Cases ***
Test GET Request
    ${response}=      GET On Session    api    /users/2
    Should Be Equal As Strings    ${response.status_code}    200
    Log    ${response.json()}

