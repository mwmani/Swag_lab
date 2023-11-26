*** Settings ***
Library         SeleniumLibrary
Resource        config/login_page/loginpage.robot
Resource        config/common_variables.robot
Test Template

*** Variables ***

*** Keywords ***
Login To Swag Lab Application
#    [Arguments]     ${username}     ${password}
    Open Browser    https://www.saucedemo.com/     chrome
    Maximize Browser Window
    Sleep   ${EXTRA_SMALL_SLEEP}
    Wait Until Element Is Enabled   ${username_locator}     ${EXTRA_SMALL_SLEEP}
    Input Text      ${username_locator}       standard_user
    Input Text      ${password_locator}       secret_sauce
    Click Element   ${login_locator}
    Close Browser



