*** Settings ***
Documentation       Verify the features on Birthday Month Offer are working properly
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../../Resources/res_Signup.robot
Resource            ../../../Resources/res_camp_newCustomer.robot
Resource            ../../../Resources/res_dbShopick.robot
Suite Setup         Connect To Database     pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
#Suite Teardown      Close Browser

*** Test Cases ***
Delete Existing Campaign
    Delete Birthday Month Campaign
Verify create Birthday Month Offer (Free Gift) is successfully
    Birthday Month => Free Gift => Step 1
    Birthday Month => Free Gift => Step 2
    Birthday Month => Free Gift => Step 3
Verify Edit Birthday Month Offer (Free Gift) is successfully
    Edit Birthday Month Campaign



*** Keywords ***
Birthday Month => Free Gift => Step 1
    Go to Outlet menu
    Click Create Campaign
    Select Birthday Month Offer
    Click Next button
Birthday Month => Free Gift => Step 2
    Input Birthday Month Name
    Select Free Gift Type
    Input Offer Value
    Input Minimum Spending
    Select Offer Period
    Click Upload Image
    Click Next button
Birthday Month => Free Gift => Step 3
    #Click T&C 1 Radio Button
    #Click T&C 2 Radio Button
    Add T&C
    Click Publish
    Success Message is displayed

###Edit Cash Voucher###
Edit Birthday Month Campaign
   Click Edit Campaign
   Add Term & Condition
   Edit Birthday Month Offer Name
   Edit Offer Value
   Edit Minimum Spend
   Click Save Edit
   Success Edit Message is displayed