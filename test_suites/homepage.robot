*** Settings ***
Library         SeleniumLibrary
Resource        utilities/loginpage/loginpage.robot
Resource        utilities/homepage/homepage.robot
Suite Setup     Login To Swag Lab Application

*** Variables ***

*** Test Cases ***
TC13 To Verify The Open Menu Bread Crumb On Homepage After Login
    [Documentation]  This test case will check the Open Menu Bread menu
    To Check The Open Menu Bread Crumb On Homepage After Login

TC14 To Verify All Items, About, Logout And Reset App State Options Under Open Menu Bread Crumb
    [Documentation]  This test case will check values under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login

TC31 To Verify Fields On All Items Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under All Items Page
    To Check The Products On The Homepage

TC32 To Verify Fields On About Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields Under About Page

TC33 To Verify Fields On Log Out Option Under Open Menu Bread Crumb
    To Check Fields Under Open Menu Bread Crumb On Homepage After Login
    Verify Fields When User Logs Out




