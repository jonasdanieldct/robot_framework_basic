*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://mdbootstrap.com/docs/standard/extended/login/

*** Test Cases ***
Open Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep    2

Click on Variation #1
    Click Element    xpath://a[contains(@href, '#section-1') and text()='Variation #1']
    Sleep   2

#Click on Login Button
#    Input Text    id=loginName    form2Example1
#    Sleep   2
#	Input Text    id=loginPassword     form2Example2
#    Sleep   2
    Click Button    xpath=//div[@id='pills-login']//button[text()='Sign in']


