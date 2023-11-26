*** Settings ***
Library         SeleniumLibrary
Resource        config/cart_functionality/cartfunctionality.robot
Resource        utilities/loginpage/loginpage.robot
Resource        utilities/cart_functionality/cartfunctionality.robot
Suite Setup     Login To Swag Lab Application

*** Variables ***

*** Test Cases ***
TC9 To Verify The Login For Sauce Labs With Valid User And Valid Password
    Page Should Contain        Products
    Page Should Contain Element     ${cart_option_locator}

TC10 To Verify The Cart Option Is Available For The User On Valid Login
    Check Fields On Cart Page

TC11 To Verify Add To Cart Option Present For Products On The Site
    Check The Field On Homepage
    Check Fields On Cart Page

TC12 To Verify Products Are Available On Swag Labs Homepage
    To Check The Products On The Homepage

TC15 To Verify That User Is Able To Add The Product To Cart
    Check The Field On Homepage
    Add A Product To Cart   Backpack
    Check Fields On Cart Page

TC16 To Verify That User Is Able To See The Added Product In The Cart
    Check The Field On Homepage
    Add A Product To Cart   Bikelight
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight

TC17 To Verify That User Is Able To Add Multiple Products To The Cart
    Check The Field On Homepage
    Add multiple Products To Cart
    Check Fields On Cart Page

TC18 To Verify That User Is Able To Remove The Product To Cart
    Check The Field On Homepage
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight
    Remove A Product From The Cart  Bikelight

TC19 To Verify That User Is Able To Remove Multiple Products From The Cart
    Check The Field On Homepage
    Check Fields On Cart Page
    Add multiple Products To Cart
    Remove All Products From The Cart
    Check Product Is Removed From Cart      Backpack

TC20 To Verify That User Is Able To Checkout One Product In The Cart
    Check The Field On Homepage
    Check Fields On Cart Page
    Add A Product To Cart   Bikelight
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight
    Check User Is Able To Checkout And land On Address Details Page

TC21 To Verify That User Is Able To Checkout Multiple Products In The Cart
    Check The Field On Homepage
    Check Fields On Cart Page
    Add multiple Products To Cart
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight
    Check User Is Able To Checkout And Land On Address Details Page

TC22 To Verify That User Is Able To Checkout One Product In The Cart And Proceed To Complete The Payment
    Check The Field On Homepage
    Check Fields On Cart Page
    Add A Product To Cart   Bikelight
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight
    Check User Is Able To Checkout And Land On Address Details Page
    Check Fields On Overview Page Of Payments
    Check The Transaction Completion Page

TC23 To Verify That User Is Able To Checkout Multiple Product In The Cart And Proceed To Complete The Payment
    Check The Field On Homepage
    Check Fields On Cart Page
    Add multiple Products To Cart
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight
    Check User Is Able To Checkout And Land On Address Details Page
    Check Fields On Overview Page Of Payments
    Check The Transaction Completion Page

TC24 To Verify That User Is Able To Checkout One Product In The Cart And Cancel The Payment
    Check The Field On Homepage
    Check Fields On Cart Page
    Add A Product To Cart   Bikelight
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight
    Check User Is Able To Checkout And Land On Address Details Page
    Check Fields On Overview Page Of Payments And Cancel The Transaction
    Check The Field On Homepage

TC25 To Verify That User Is Able To Checkout Multiple Product In The Cart And Cancel The Payment
    Check The Field On Homepage
    Check Fields On Cart Page
    Add multiple Products To Cart
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight
    Check User Is Able To Checkout And Land On Address Details Page
    Check Fields On Overview Page Of Payments And Cancel The Transaction
    Check The Field On Homepage

TC26 To Check Back Home Button After Checking Out Product In The Cart And Completing The Payment
    Check The Field On Homepage
    Check Fields On Cart Page
    Add multiple Products To Cart
    Check Fields On Cart Page
    Check Product Added To Cart     Bikelight
    Check User Is Able To Checkout And Land On Address Details Page
    Input Details On Your Information Page And Press Continue
    Check Fields On Overview Page Of Payments
    Check Back Home Button Works On Checkout Complete Page

TC27 To Check That User Is Able To Filter The Products With Name (A to Z) Option
    Check The Field On Homepage
    Select Filter On Products List  Name (A to Z)
    Select Filter On Products List

TC28 To Check That User Is Able To Filter The Products With Name (Z to A) Option
    Check The Field On Homepage
    Select Filter On Products List  Name (Z to A)
    Select Filter On Products List

TC29 To Check That User Is Able To Filter The Products With Price (low to high) Option
    Check The Field On Homepage
    Select Filter On Products List  Price (low to high)
    Select Filter On Products List

TC30 To Check That User Is Able To Filter The Products With Price (high to low) Option
    Check The Field On Homepage
    Select Filter On Products List  Price (high to low)
    Select Filter On Products List


