*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${QR_IMAGE_PATH}       /Users/nk/Documents/code/GitHub/automateTest/ScanQR/Resources/youtube.png
${EXPECTED_URL}        https://www.youtube.com/
*** Keywords ***
Open Scan QR Page 
    Wait Until Page Contains    QR Code scanner

   
Upload youtube QR
    Click Image    //*[@id="qrimg"]
    Wait Until Element Is Visible    //*[@id="imghelp"]/input
    Choose File    //*[@id="imghelp"]/input    ${QR_IMAGE_PATH}
    Wait Until Element Is Visible    //*[@id="result"]/a
    Click Link    //*[@id="result"]/a

Check redirection to youtube website
    ${window_handles}=    Get Window Handles
    Switch Window    ${window_handles}[1]
    Wait Until Page Contains    youtube