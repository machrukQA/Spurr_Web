*** Settings ***
Documentation       Verify the features on Lost Customer Offer are working properly
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../../Resources/res_Signup.robot
Resource            ../../../Resources/res_camp_newCustomer.robot
Resource            ../../../Resources/res_dbShopick.robot
Suite Setup         Connect To Database     pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown      Close Browser




*** Test Cases ***
Delete Existing Campaign
    Delete Lost Customer Campaign
Verify create Lost Customer Offer (Cash Voucher) is successfully
    Lost Customer => Cash Voucher => Step 1
    Lost Customer => Cash Voucher => Step 2
    Lost Customer => Cash Voucher => Step 3
Verify edit Lost Customer Offer (Cash Voucher) is successfully
    Edit Lost Customer Campaign




*** Keywords ***
###Cash Voucher###
Lost Customer => Cash Voucher => Step 1
    Go to Campaign menu
    Click Create Campaign
    Select Lost Customer Offer
    Click Next button
Lost Customer => Cash Voucher => Step 2
    Input Lost Customer Name
    Select Cash Voucher Type
    Input Offer Value
    Input Minimum Spending
    Select Offer Period
    Click Next button
Lost Customer => Cash Voucher => Step 3
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
