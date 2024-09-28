*** Settings ***
Documentation  Google Search Functionality
Library  SeleniumLibrary
Resource  commonFunctionality.robot  #extent code จากไฟล์อื่นมาใช้ เอาไว้สำหรับพวกฟังก์ชั่นที่ใช้ในหลาย TS 

#Search on google
*** Test Cases *** 

Google Search Test
    Open Browser    ${URL}    ${Browser}
    [Teardown]    Close All Browsers

#หัวข้อเทสเคส จะเทสเรื่องอะไร validate อะไร ซีนไหน
TS001_TC001_Verify Google Search Functionality
    #อธิบายเทสเคส
    [Documentation]  This test case verify the google search functionality
    [Tags]  Functionality      #tag ว่าเทสเรื่องไหนอยู่ อารมณ์ชื่อการ์ด
    Start testcase
    TS001_TC001_Verify
    Finish testcase

TS001_TC002_Verify Google Search Functionality with category
    Start testcase
    TS001_TC001_Verify
    Click Element   //*[@id="hdtb-sc"]/div/div/div[1]/div/div[2]/a/div
    Click Element   //*[@id="hdtb-tls"]
    Click Element   //*[@id="tn_1"]/span[6]/a/div/span
    Click Element   //*[@id="gmcr_imgc3"]/div/span[1]
    Click Element    //*[@id="s1zaZb"]/div[5]/div[9]/div[2]/input[2]
    Finish testcase



*** Keywords ***
TS001_TC001_Verify
    #ใส่ค่าลงใน id APjFqb (ได้จากinspectจอ)
    Input Text    //*[@id="APjFqb"]    Mobile
    #ใส่กด enter ที่ id นั้น
    Press Keys    //*[@id="APjFqb"]    ENTER
    #เช็ค actual result ในทีนี้คือหัวข้อเพจต้องเป็นคำที่เสริชไป
    Wait Until Page Contains    Mobile
