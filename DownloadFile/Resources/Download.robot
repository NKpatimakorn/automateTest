*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${EXPECTED_FILENAME}    3dicons-png-dynamic-1.0.0.zip
${DOWNLOAD_DIR}         /Users/nk/Downloads

*** Keywords ***
DownloadFile1GB
    Wait Until Page Contains    Direct Download Free Sample Test Files
    Click Element    css=body > div.elementor.elementor-32.elementor-location-single.post-431.page.type-page.status-publish.hentry > section > div > div > div > div > div > div > section.elementor-section.elementor-top-section.elementor-element.elementor-element-bafa0d5.elementor-section-boxed.elementor-section-height-default.elementor-section-height-default > div > div > div > div.elementor-element.elementor-element-df92ad5.elementor-align-justify.elementor-widget.elementor-widget-button > div > div > a

ValidateDownloadedFile
    ${file_size}=    Get File Size    ${DOWNLOAD_DIR}/${EXPECTED_FILENAME}
    Should Be Equal As Integers    ${file_size}    1358121652

DeleteFile
    Remove File       /Users/nk/Downloads/3dicons-png-dynamic-1.0.0.zip

