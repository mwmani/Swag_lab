*** Settings ***
Library         SeleniumLibrary
Resource        config/login_page/loginpage.robot
Resource        config/common_variables.robot
#Resource        utilities/loginpage/loginpage.robot
Test Template       Login To Swag Lab Application With User

*** Variables ***

*** Test Cases ***                      username                    password
TC1 valid user and invalid password     standard_user               invalid
TC2 invalid user and valid password     invalid_user                secret_sauce
TC3 invalid user and invalid password   invalid_user                invalid
TC4 invalid user and empty password     invalid_user                ${EMPTY}
TC5 valid user and empty password       standard_user               ${EMPTY}
TC6 empty user and invalid password     ${EMPTY}                    invalid
TC7 empty user and valid password       ${EMPTY}                    secret_sauce
TC8 empty user and empty password       ${EMPTY}                    ${EMPTY}

*** Keywords ***
Login To Swag Lab Application With User
    [Arguments]     ${username}     ${password}
    Open Browser    https://www.saucedemo.com/     chrome
    Maximize Browser Window
    Sleep   ${EXTRA_SMALL_SLEEP}
    Wait Until Element Is Enabled   ${username_locator}     ${EXTRA_SMALL_SLEEP}
    Input Text      ${username_locator}      ${username}
    Input Text      ${password_locator}       ${password}
    Click Element   ${login_locator}
    Close Browser