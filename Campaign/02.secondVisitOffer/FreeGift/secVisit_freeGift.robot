*** Settings ***
Documentation       Verify create Second Visit Offer is successfully
Library             Selenium2Library
Library             DateTime
Library             String
Library             BuiltIn
Library             OperatingSystem
Resource            ../../../Resources/res_Signup.robot
Resource            ../../../Resources/res_camp_newCustomer.robot
Resource            ../../../Resources/res_dbShopick.robot
Suite Setup         Connect To Database     pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
#Suite Teardown      Close Browser




*** Test Cases ***
Delete Existing Campaign
    Delete Second Visit Campaign
Verify create Second Visit Offer (Free Gift) is successfully
    Second Visit => Free Gift => Step 1
    Second Visit => Free Gift => Step 2
    Second Visit => Free Gift => Step 3
Verify Edit Second Visit Offer (Cash Voucher) is successfully
    Edit Second Visit Campaign




*** Keywords ***
#Verify create New Costomer offer is successfully
Second Visit => Free Gift => Step 1
    Go to Campaign menu
    Click Create Campaign
    Select Second Visit Offer
    Click Next button
Second Visit => Free Gift => Step 2
    Input Second Visit Name
    Select Free Gift Type
    Input Offer Value
    Input Minimum Spending
    Select Offer Period
    Click Upload Image
    Click Next to Step 3
Second Visit => Free Gift => Step 3
    #Click T&C 1 Radio Button
    #Click T&C 2 Radio Button
    Add T&C
    Click Publish
    Success Message is displayed

###Edit Free Gift###
Edit Second Visit Campaign
   Click Edit Campaign
   Add Term & Condition
   Edit Second Visit Offer Name
   Edit Offer Value
   Edit Minimum Spend
   Click Save Edit
   Success Edit Message is displayed