*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}    Chrome
${URL}        https://www.google.com

*** Test Cases ***
Search Cat on Google
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window
    Input Text    name=q    dog
    Press Keys    name=q    \ue007   # Press Enter key
    Wait Until Page Contains    cats
    Close Browser