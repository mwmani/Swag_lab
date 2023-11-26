*** Settings ***
Library         SeleniumLibrary
Library         String
Resource        config/overview/overviewpage.robot
Resource        config/cart_functionality/cartfunctionality.robot

*** Variables ***

*** Keywords ***
Check Fields On Cart Page
    Page Should Contain        Products
    Page Should Contain Element     ${cart_option_locator}
    Click Element       ${cart_option_locator}
    Page Should Contain     Your Cart
    Page Should Contain Element     ${cart_continue_locator}
    Page Should Contain Element     ${cart_checkout_locator}

Check The Field On Homepage
    Page Should Contain     Swag Labs
    Page Should Contain     Products

Add A Product To Cart
    [Documentation]  This keyword is used to add a product to cart
    [Arguments]     ${product_to_add}
    IF  '${product_to_add}' == 'Backpack'
        Click Element   ${backpack_add_to_cart_locator}
    ELSE IF    '${product_to_add}' == 'Bikelight'
        Click Element   ${backlight_add_to_cart_locator}
    ELSE IF    '${product_to_add}' == 'Bolt Tshirt'
        Click Element   ${bolt_tshirt_add_to_cart_locator}
    ELSE IF    '${product_to_add}' == 'Fleece'
        Click Element   ${fleece_add_to_cart_locator}
    ELSE IF    '${product_to_add}' == 'Onesie'
        Click Element   ${onesie_add_to_cart_locator}
    ELSE IF    '${product_to_add}' == 'Allthings'
        Click Element   ${allthings_add_to_cart_locator}
    END

Check Product Added To Cart
    [Documentation]  This keyword is used to check product is added to the cart
    [Arguments]     ${product_name}
    IF  '${product_name}' == 'Backpack'
        Page Should Contain   Sauce Labs Backpack
    ELSE IF    '${product_name}' == 'Bikelight'
        Page Should Contain   Sauce Labs Bike Light
    ELSE IF    '${product_name}' == 'Bolt Tshirt'
        Page Should Contain   Sauce Labs Bolt T-Shirt
    ELSE IF    '${product_name}' == 'Fleece'
        Page Should Contain   Sauce Labs Fleece Jacket
    ELSE IF    '${product_name}' == 'Onesie'
        Page Should Contain   Sauce Labs Onesie
    ELSE IF    '${product_name}' == 'Allthings'
        Page Should Contain   Test.allTheThings() T-Shirt (Red)
    END

Add multiple Products To Cart
    [Documentation]  This keyword is used to add multiple products to cart
    Click Element   ${backpack_add_to_cart_locator}
    Click Element   ${backlight_add_to_cart_locator}
    Click Element   ${bolt_tshirt_add_to_cart_locator}
    Click Element   ${fleece_add_to_cart_locator}
    Click Element   ${onesie_add_to_cart_locator}
    Click Element   ${allthings_add_to_cart_locator}

Check Product Is Removed From Cart
    [Documentation]  This keyword is used to check product is removed from the cart
    [Arguments]     ${product_name}
    IF  '${product_name}' == 'Backpack'
        Page Should Not Contain    Sauce Labs Backpack
    ELSE IF    '${product_name}' == 'Bikelight'
        Page Should Not Contain    Sauce Labs Bike Light
    ELSE IF    '${product_name}' == 'Bolt Tshirt'
        Page Should Not Contain    Sauce Labs Bolt T-Shirt
    ELSE IF    '${product_name}' == 'Fleece'
        Page Should Not Contain    Sauce Labs Fleece Jacket
    ELSE IF    '${product_name}' == 'Onesie'
        Page Should Not Contain    Sauce Labs Onesie
    ELSE IF    '${product_name}' == 'Allthings'
        Page Should Not Contain    Test.allTheThings() T-Shirt (Red)
    END

Remove A Product From The Cart
    [Documentation]  This keyword is used to remove a product from the cart
    [Arguments]     ${product_to_add}
    IF  '${product_to_add}' == 'Backpack'
        Click Element   ${backpack_remove_from_cart_locator}
    ELSE IF    '${product_to_add}' == 'Bikelight'
        Click Element   ${backlight_remove_from_cart_locator}
    ELSE IF    '${product_to_add}' == 'Bolt Tshirt'
        Click Element   ${bolt_tshirt_remove_from_cart_locator}
    ELSE IF    '${product_to_add}' == 'Fleece'
        Click Element   ${fleece_remove_from_cart_locator}
    ELSE IF    '${product_to_add}' == 'Onesie'
        Click Element   ${onesie_remove_from_cart_locator}
    ELSE IF    '${product_to_add}' == 'Allthings'
        Click Element   ${allthings_remove_from_cart_locator}
    END

Remove All Products From The Cart
    [Documentation]  This keyword is used to remove all products from the cart
        Click Element   ${backpack_remove_from_cart_locator}
        Click Element   ${backlight_remove_from_cart_locator}
        Click Element   ${bolt_tshirt_remove_from_cart_locator}
        Click Element   ${fleece_remove_from_cart_locator}
        Click Element   ${onesie_remove_from_cart_locator}
        Click Element   ${allthings_remove_from_cart_locator}

Check User Is Able To Checkout And Land On Address Details Page
    [Documentation]  This keyword is used to check user is on checkout page
    Click Element       ${checkout_btn_locator}
    Page Should Contain Element     ${firstname_text_locator}
    Page Should Contain Element     ${continue_btn_locator}

Input Details On Your Information Page And Press Continue
    [Documentation]  This keyword will input values in fields on Your Information Page
    [Arguments]     ${firstname}    ${lastname}     ${postalcode}
    Input Text      ${firstname_text_locator}   ${firstname}
    Input Text      ${lastname_text_locator}    ${lastname}
    Input Text      ${postalcode_text_locator}   ${postalcode}
    Click Element   ${continue_btn_locator}

Check Fields On Overview Page Of Payments
    [Documentation]  This keyword is used to check the fields on overview page of payments
    Page Should Contain     Payment Information
    Page Should Contain     Shipping Information
    Page Should Contain     Price Total
    Page Should Contain Element    ${finish_btn_locator}
    Page Should Contain Element    ${cancel_btn_locator}
    Page Should Contain     Checkout: Overview
    Click Element      ${finish_btn_locator}

Check The Transaction Completion Page
    [Documentation]  This keyword is used to check the fields on transaction completion page
    Page Should Contain     Checkout: Complete!
    Page Should Contain     Thank you for your order!
    Page Should Contain Element     ${backhome_btn_locator}

Check Fields On Overview Page Of Payments And Cancel The Transaction
    [Documentation]  This keyword is used to check the fields on overview page of payments and cancel the transaction
    Page Should Contain     Payment Information
    Page Should Contain     Shipping Information
    Page Should Contain     Price Total
    Page Should Contain Element    ${finish_btn_locator}
    Page Should Contain Element    ${cancel_btn_locator}
    Page Should Contain     Checkout: Overview
    Click Element      ${cancel_transaction_btn_locator}

Check Back Home Button Works On Checkout Complete Page
    [Documentation]  This keyword is used to check that back home button works pn checkout complete page and user lands on prodcuts page
    Wait Until Element Is Visible       ${backhome_btn_locator}
    Click Element       ${backhome_btn_locator}
    Check The Field On Homepage





