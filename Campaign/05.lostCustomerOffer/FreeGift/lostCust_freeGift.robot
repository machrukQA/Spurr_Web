*** Settings ***
Documentation       Verify the features on Lost Customer Offer are working properly
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
    Delete Lost Customer Campaign
Verify create Lost Customer Offer (Free Gift) is successfully
    Lost Customer => Free Gift => Step 1
    Lost Customer => Free Gift => Step 2
    Lost Customer => Free Gift => Step 3
Verify edit Lost Customer Offer (Free Gift) is successfully
    Edit Lost Customer Campaign




*** Keywords ***
#Verify create New Costomer offer is successfully
Lost Customer => Free Gift => Step 1
    Go to Outlet menu
    Click Create Campaign
    Select Lost Customer Offer
    Click Next button
Lost Customer => Free Gift => Step 2
    Input Lost Customer Name
    Select Free Gift Type
    Input Offer Value
    Input Minimum Spending
    Select Offer Period
    Click Upload Image
    Click Next button
Lost Customer => Free Gift => Step 3
    #Click T&C 1 Radio Button
    #Click T&C 2 Radio Button
    Add T&C
    Click Publish
    Success Message is displayed

###Edit Cash Voucher###
Edit Lost Customer Campaign
   Click Edit Campaign
   Add Term & Condition
   Edit Lost Customer Name
   Edit Offer Value
   Edit Minimum Spend
   Click Save Edit
   Success Edit Message is displayed






