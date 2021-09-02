*** Settings ***
Documentation       Verify create New Customer Offer is successfully
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
    Delete New Customer Campaign

Verify create New Customer Offer (Free Gift) is successfully
    New Customer => Free Gift => Step 1
    New Customer => Free Gift => Step 2
    New Customer => Free Gift => Step 3

#Verify edit New Customer Offer (Free Gift) is successfully
    #Edit New Customer Campaign



*** Keywords ***
New Customer => Free Gift => Step 1
    Go to Campaign menu
    Click Create Campaign
    Select New Customer Offer
    Click Next button
New Customer => Free Gift => Step 2
    Input New Customer Name
    Select Free Gift Type
    Input Offer Value
    Input Minimum Spending
    Select Offer Period
    Click Upload Image
    Click Next button
    Click Upload Image
    Click Next button
New Customer => Free Gift => Step 3
    #Click T&C 1 Radio Button
    #Click T&C 2 Radio Button
    Add T&C
    Click Publish
    Success Message is displayed

###Edit Free Gift###
Edit New Customer Campaign
    Click Edit Campaign
    Add Term & Condition
    Edit New Customer Offer Name
    Edit Offer Value
    Edit Minimum Spend
    Click Save Edit
    Success Edit Message is displayed