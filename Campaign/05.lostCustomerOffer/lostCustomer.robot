*** Settings ***
Documentation       Verify the features on Lost Customer Offer are working properly
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_camp_newCustomer.robot
Suite Setup         Open GoSpurr.com
#Suite Teardown      Close Browser



*** Test Cases ***
Verify create Lost Customer Offer (Free Gift) is successfully
    Lost Customer => Free Gift => Step 1
    Lost Customer => Free Gift => Step 2
    Lost Customer => Free Gift => Step 3

#Verify create Lost Customer Offer (Buy X Get Y) is successfully
    #Lost Customer => Buy X Get Y => Step 1
    #Lost Customer => Buy X Get Y => Step 2
    #Lost Customer => Buy X Get Y => Step 3

#Verify create Lost Customer Offer (Cash Voucher) is successfully
    #Lost Customer => Cash Voucher => Step 1
    #Lost Customer => Cash Voucher => Step 2
    #Lost Customer => Cash Voucher => Step 3




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


###Buy X Get Y###
Lost Customer => Buy X Get Y => Step 1
    Go to Outlet menu
    Click Create Campaign
    Select Lost Customer Offer
    Click Next button
Lost Customer => Buy X Get Y => Step 2
    Input Lost Customer Name
    Select Buy X Get Y Type
    Input X Product
    Input Y Product
    Input X Product Value
    Input Y Product Value
    Input Minimum Spending
    Select Offer Period
    #Click Upload Image
    #Click Next button
Lost Customer => Buy X Get Y => Step 3
    #Click T&C 1 Radio Button
    #Click T&C 2 Radio Button
    Add T&C
    Click Publish


###Cash Voucher###
Lost Customer => Cash Voucher => Step 1
    Go to Outlet menu
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