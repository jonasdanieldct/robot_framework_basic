*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://www.facebook.com/

*** Test Cases ***
Open Browser
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Sleep       2

Click on Create Account Button
    Click Element    xpath://a[text()='Create new account']
    Sleep       2

Input Registration Details
    Input Text    name=reg_email__    email@email.com
    Input Text    name=firstname      first name
    Input Text    name=lastname      last name  
    #Click Element    birthday_month
    #Sleep       2
    Select From List by Value    birthday_day    8
    Select From List by Value    birthday_month    8
    Select From List by Value    birthday_year    1981
    Sleep       2
Click Submit
    Click Element    websubmit
    Sleep       2  


