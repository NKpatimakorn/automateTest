*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/Download.robot

Test Setup       Start Test
Test Teardown    End Test

*** Test Cases ***
Validate the download video function
    Given DownloadFile1GB
    Then ValidateDownloadedFile
    DeleteFile