*** Settings ***
Library         SeleniumLibrary
Resource        utilities/loginpage/loginpage.robot
Resource        utilities/homepage/homepage.robot
Resource        utilities/about_page/about_page.robot
Suite Setup     Login To Swag Lab Application

*** Variables ***

*** Test Cases ***
TC34 To Verify Fields For Products On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page
    Verify Fields Under Products Section On About Page

TC35 To Verify Fields For Solutions On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page
    Verify Fields Under Solutions Section On About Page

TC36 To Verify Fields For Pricing On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page
    Verify Fields Under Pricing Section On About Page

TC37 To Verify Fields For Developers On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page
    Verify Fields Under Developers Section On About Page

TC38 To Verify Fields For Resources On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page
    Verify Fields Under Resources Section On About Page

TC39 To Verify Fields For SignIn On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page
    Verify Fields Under SignIn Section On About Page

TC40 To Verify Fields For Request A Demo On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page
    Verify Fields Under Request A Demo Section On About Page

TC41 To Verify Fields For Try It Free On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page
    Verify Fields Under Try It Free Section On About Page




