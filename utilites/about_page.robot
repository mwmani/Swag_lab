*** Settings ***
Library         SeleniumLibrary
Resource        config/about_page/about_page.robot

*** Keywords ***
Verify Fields Under Products Section On About Page
    [Documentation]  This keyword is used verify fields under products section on about page
    Mouse Over      ${products_option_locator}
    Wait Until Page Contains    Platform for Test
    Page Should Contain     Sauce Cross-Browser
    Page Should Contain     Setup & integrate

Verify Fields Under Solutions Section On About Page
    [Documentation]  This keyword is used verify fields under solutions section on about page
    Mouse Over      ${solutions_locator}
    Wait Until Page Contains    CI/CD
    Page Should Contain     Solutions for
    Page Should Contain     Enterprise

Verify Fields Under Pricing Section On About Page
    [Documentation]  This keyword is used verify fields under pricing section on about page
    Click Element      ${pricing_locator}
    Wait Until Page Contains    Continuous Testing Cloud
    Page Should Contain     Pricing Plans
    Scroll Element Into View    xpath=//*[@id="__next"]/div[2]/div/div[2]/div[2]/div/div[1]/div[2]/h3

Verify Fields Under Developers Section On About Page
    [Documentation]  This keyword is used verify fields under developers section on about page
    Mouse Over      ${developers_locator}
    Wait Until Page Contains    Resources for devs & testers
    Page Should Contain     Community
    Page Should Contain     Test orchestration

Verify Fields Under Resources Section On About Page
    [Documentation]  This keyword is used verify fields under resources section on about page
    Mouse Over      ${resources_locator}
    Wait Until Page Contains    Explore & learn
    Page Should Contain     Why Sauce Labs?
    Page Should Contain     Discover by topic

Verify Fields Under SignIn Section On About Page
    [Documentation]  This keyword is used verify fields under signin section on about page
    Click Element      ${signin_locator}
    Switch Window   New
    Wait Until Page Contains  User Name
    Page Should Contain     Password
    Page Should Contain     Remember username

Verify Fields Under Request A Demo Section On About Page
    [Documentation]  This keyword is used verify fields under request a demo section on about page
    Click Element      ${requestademo_locator}
    Wait Until Page Contains  Contact details
    Page Should Contain     See how we help engineering and product teams test smarter and faster
    Page Should Contain     Request a Demo

Verify Fields Under Try It Free Section On About Page
    [Documentation]  This keyword is used verify fields under try it free section on about page
    Click Element      ${try_it_free_locator}
    Wait Until Page Contains  Sign in
    Page Should Contain     Start testing in minutes
    Page Should Contain     28-day trial includes



