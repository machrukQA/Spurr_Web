*** Settings ***
Documentation       Verify create Anniversary Offer is successfully
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
    Delete Anniversary Campaign
Verify create Anniversary Offer (Buy X Get Y) is successfully
    Anniversary => Buy X Get Y => Step 1
    Anniversary => Buy X Get Y => Step 2
    Anniversary => Buy X Get Y => Step 3
Verify create Anniversary Offer (Buy X Get Y) is successfully
    Edit Buy X Get Y Campaign



*** Keywords ***
###Buy X Get Y###
Anniversary => Buy X Get Y => Step 1
    Go to Outlet menu
    Click Create Campaign
    Select Anniversary Offer
    Click Next button
Anniversary => Buy X Get Y => Step 2
    Input Anniversary Name
    Select Buy X Get Y Type
    Input X Product
    Input Y Product
    Input X Product Value
    Input Y Product Value
    Input Minimum Spending
    Select Offer Period
    #Click Upload Image
    #Click Next button
Anniversary => Buy X Get Y => Step 3
    #Click T&C 1 Radio Button
    #Click T&C 2 Radio Button
    Add T&C
    Click Publish
    Success Message is displayed

###Edit Buy X Get Y###
Edit Buy X Get Y Campaign
    Click Edit Campaign
    Add Term & Condition
    Edit Anniversary Offer Name
    Edit X Product
    Edit Y Product
    Edit X Product Value
    Edit Y Product Value
    Edit Minimum Spend
    Click Save Edit
    Success Edit Message is displayed