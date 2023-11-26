*** Settings ***
Library         SeleniumLibrary
Resource        config/homepage/homepage.robot
Resource        config/login_page/loginpage.robot

*** Variables ***

*** Keywords ***
To Check The Open Menu Bread Crumb On Homepage After Login
    [Documentation]     This keyword is used to check open menu bread crumb on homepage after login
    Page Should Contain Element     ${react_burger_menu_btn_locator}
    Click Element       ${react_burger_menu_btn_locator}

To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    [Documentation]     This keyword is used to check fields under open menu bread crumb on homepage after login
    Page Should Contain Element     ${allitem_burger_menu_btn_locator}
    Page Should Contain Element     ${about_burger_menu_btn_locator}
    Page Should Contain Element     ${logout_burger_menu_btn_locator}
    Page Should Contain Element     ${reset_burger_menu_btn_locator}

To Check The Products On The Homepage
    [Documentation]  This keyword is used to check the products on homepage
    Page Should Contain     Sauce Labs Backpack
    Page Should Contain     Sauce Labs Bike Light
    Page Should Contain     Sauce Labs Bolt T-Shirt
    Page Should Contain     Sauce Labs Fleece Jacket
    Page Should Contain     Sauce Labs Onesie
    Page Should Contain     Test.allTheThings() T-Shirt (Red)

Select Filter On Products List
    [Arguments]  ${filter_text}
    Wait Until Element Is Enabled       ${product_sort_filter}
    IF  '${filter_text}' == 'Name (A to Z)'
        Select From List By Value    ${product_sort_filter}     az
    ELSE IF  '${filter_text}' == 'Name (Z to A)'
        Select From List By Value    ${product_sort_filter}     az
    ELSE IF  '${filter_text}' == 'Price (low to high)'
        Select From List By Value    ${product_sort_filter}     lohi
    ELSE IF  '${filter_text}' == 'Price (high to low)'
        Select From List By Value    ${product_sort_filter}     hilo
    END

Verify Product Is Filtered As Per The Filter Is Selected
    ${selected_value}=   Get Text        ${product_sort_filter_selected}
    ${sorted_value}=   Get Text        ${first_value_on_product_page}
    IF  '${selected_value}' == 'Name (A to Z)'
        Should Be Equal As Strings      ${sorted_value}     Sauce Labs Backpack
    ELSE IF  '${selected_value}' == 'Name (Z to A)'
        Should Be Equal As Strings      ${sorted_value}     Test.allTheThings() T-Shirt (Red)
    ELSE IF  '${selected_value}' == 'Price (low to high)'
        Should Be Equal As Strings      ${sorted_value}     Sauce Labs Onesie
    ELSE IF  '${selected_value}' == 'Price (high to low)'
        Should Be Equal As Strings      ${sorted_value}     Sauce Labs Fleece Jacket
    END

Verify Fields Under About Page
    [Documentation]  This keyword is used verify fields under about page
    Click Element       ${about_burger_menu_btn_locator}
    Wait Until Page Contains    Pricing
    Wait Until Page Contains    Request a demo

Verify Fields When User Logs Out
    [Documentation]  This keyword is used verify fields when user logs out
    Click Element       ${logout_burger_menu_btn_locator}
    Wait Until Page Contains    ${username_locator}
    Wait Until Page Contains    xpath=//*[@id="password"]

Verify Fields Under All Items Page
    [Documentation]  This keyword is used verify fields under all items page
    Click Element       ${allitem_burger_menu_btn_locator}

