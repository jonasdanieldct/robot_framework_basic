*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Variables ***
${BROWSER}    Chrome
${URL}        https://semantic-ui.com/modules/dropdown.html#:~:text=A%20dropdown%20can%20be%20used,HTML%20and%20a%20hidden%20input%20.

*** Test Cases ***
Interact with Semantic UI Dropdown
    Open Browser    ${URL}    ${BROWSER}
    #Maximize Browser Window

    # Locate the dropdown and open it
    Click Element    xpath=//div[@class='ui selection dropdown']


    # Wait explicitly for the dropdown menu to be visible
    Wait Until Element Is Visible    xpath=//div[@class='ui selection dropdown active visible']
    ...    timeout=10s
    ...    error=Dropdown menu did not appear in 10 seconds


    # Select an option from the dropdown
    Click Element    xpath=//div[@class='item' and @data-value='1']   # Selects 'Female'

    # Optionally, you can get the selected value
    ${selected_value}    Get Text    xpath=//div[@class='text']
    Log    Selected value: ${selected_value} # Selects 'Female'

Interact with fluid UI Dropdown
    #Locate Friend Dropdown
    Click Element    xpath=//div[@class='ui fluid selection dropdown']

    # Wait explicitly for the dropdown menu to be visible
    Wait Until Element Is Visible    xpath=//div[@class='menu transition visible']
    ...    timeout=10s
    ...    error=Dropdown menu did not appear in 10 seconds

        # Select an option from the dropdown
    Click Element    xpath=//div[@class='item' and @data-value='jenny'] 
