*** Settings ***
Documentation       Verify Upgrade to pro is successfully
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_UpgradePro.robot
Suite Setup         Open GoSpurr.com
#Suite Teardown      Close Browser

*** Test Cases ***
Verify Upgrade to pro is successfully (Annual)
    Click Profile Menu
    Click Account Menu
    Sleep                   3
    Click Upgrade
    Sleep                   3
    Select Annual Charges
    Input Card Number
    Input Firstname Billing
    Input Lastname Billing
    Input Address Line 1
    Input Address Line 2
    Input Postcode
    Input City
    Input State/Territory
    Input Country
    Click Update Plan


*** Keywords ***
Verify Upgrade to pro is successfully (Annual)
    Click Profile Menu
    Click Account Menu
    Click Upgrade
    Select Annual Charges
    Input Card Number
    Input Firstname Billing
    Input Lastname Billing
    Input Address Line 1
    Input Address Line 2
    Input Postcode
    Input City
    Input State/Territory
    Input Country
    Click Update Plan

Verify Upgrade to pro is successfully (Monthly)
    Click Profile Menu
    Click Account Menu
    Select Monthly Charges
    Input Card Number
    Input Firstname Billing
    Input Lastname Billing
    Input Address Line 1
    Input Address Line 2
    Input Postcode
    Input City
    Input State/Territory
    Input Country
    Click Update Plan
