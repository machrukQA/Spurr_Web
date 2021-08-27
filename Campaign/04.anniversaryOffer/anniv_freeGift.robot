*** Settings ***
Documentation       Verify create Anniversary Offer is successfully
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_camp_newCustomer.robot
Resource            ../../Resources/res_dbShopick.robot
Suite Setup         Connect To Database     pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
#Suite Teardown      Close Browser

*** Test Cases ***
Verify create Anniversary Offer (Free Gift) is successfully
    Anniversary => Free Gift => Step 1
    Anniversary => Free Gift => Step 2
    Anniversary => Free Gift => Step 3



*** Keywords ***
Anniversary => Free Gift => Step 1
    Go to Outlet menu
    Click Create Campaign
    Select Anniversary Offer
    Click Next button
Anniversary => Free Gift => Step 2
    Input Anniversary Name
    Select Free Gift Type
    Input Offer Value
    Input Minimum Spending
    Select Offer Period
    Click Upload Image
    Click Next button
Anniversary => Free Gift => Step 3
    #Click T&C 1 Radio Button
    #Click T&C 2 Radio Button
    Add T&C
    Click Publish