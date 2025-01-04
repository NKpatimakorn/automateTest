*** Settings ***
Resource    ../Resources/Common.robot
Resource    ../Resources/QRcode.robot
Test Setup       Start Test
Test Teardown    End Test

#robot -d ScanQR/Results ScanQR/test/ScanQR.robot
*** Test Cases ***
Upload QR Code and Verify Redirection
    Given QRCode.Open Scan QR Page 
    When QRcode.Upload youtube QR
    Then QRcode.Check redirection to youtube website



