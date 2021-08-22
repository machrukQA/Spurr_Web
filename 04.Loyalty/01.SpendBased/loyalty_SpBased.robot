*** Settings ***
Documentation       Verify Create "Spend Based" loyalty features is working properly
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_01SpBased.robot
Suite Setup         Open GoSpurr.com
#Suite Teardown      Close Browser



*** Test Cases ***
Verify Create Free Gift Loyalty (Spend Based) is successfully
    Step 1 => Create Free Gift Loyalty
    Step 2 => Create Free Gift Loyalty
    #Step 3 => Create Free Gift Loyalty





*** Keywords ***
Verify Create Free Gift Loyalty (Spend Based) is successfully
    Step 1 => Create Free Gift Loyalty
    Step 2 => Create Free Gift Loyalty
    Step 3 => Create Free Gift Loyalty

Verify Create Free Gift Loyalty (Spend Based) with Multiple Rewards is successfully
    Step 1 => Create Free Gift Loyalty with Multiple Rewards
    Step 2 => Create Free Gift Loyalty with Multiple Rewards
    Step 3 => Create Free Gift Loyalty with Multiple Rewards

Verify Create Cash Voucher Loyalty (Spend Based) is successfully
    Step 1 => Create Cash Voucher Loyalty
    Step 2 => Create Cash Voucher Loyalty
    Step 3 => Create Cash Voucher Loyalty

Verify Create Cash Voucher Loyalty (Spend Based) with Multiple Rewards is successfully
    Step 1 => Create Cash Voucher Loyalty with Multiple Rewards
    Step 2 => Create Cash Voucher Loyalty with Multiple Rewards
    #Step 3 => Create Cash Voucher Loyalty with Multiple Rewards






###Scenarios###

#Verify Create Free Gift Loyalty (Spend Based) is successfully
Step 1 => Create Free Gift Loyalty
    Go to Loyalty Page
    Select Spend Based
    Input Total Number Stamp
    Input Minimum IDR
    Select Loyalty Period
    Click Next Button
    Verify Reward Details are Displayed Properly
Step 2 => Create Free Gift Loyalty
    Select Free Gift Type
    Input Reward Value
    Input Reward Name
    Upload Image
    #Click Next button (reward)
Step 3 => Create Free Gift Loyalty
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully


#Verify Create Free Gift Loyalty (Spend Based) with Multiple Rewards is successfully
Step 1 => Create Free Gift Loyalty with Multiple Rewards
    Go to Loyalty Page
    Select Spend Based
    Input Total Number Stamp
    Input Minimum IDR
    Select Loyalty Period
    Click Next Button
    Verify Reward Details are Displayed Properly
Step 2 => Create Free Gift Loyalty with Multiple Rewards
    Select Free Gift Type
    Input Reward Value
    Input Reward Name
    Upload Image
    Click Add Reward button
    Select Free Gift Type (2)
    Input Reward Value (2)
    Input Reward Name (2)
    Upload Image (2)
    #Click Next button (reward)
Step 3 => Create Free Gift Loyalty with Multiple Rewards
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully


#Verify Create Cash Voucher Loyalty (Spend Based) is successfully
Step 1 => Create Cash Voucher Loyalty
    Go to Loyalty Page
    Select Spend Based
    Input Total Number Stamp
    Input Minimum IDR
    Select Cash Voucher Period
    Click Next Button
    #Verify Reward Details are Displayed Properly
Step 2 => Create Cash Voucher Loyalty
    Select Cash Voucher Type
    #Input Reward Stamp
    Input Reward Value
    Click Next button (reward)
Step 3 => Create Cash Voucher Loyalty
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully


#Verify Create Cash Voucher Loyalty (Spend Based) with Multiple Rewards is successfully
Step 1 => Create Cash Voucher Loyalty with Multiple Rewards
    Go to Loyalty Page
    Select Spend Based
    Input Total Number Stamp
    Input Minimum IDR
    Select Cash Voucher Period
    Click Next Button
    #Verify Reward Details are Displayed Properly
Step 2 => Create Cash Voucher Loyalty with Multiple Rewards
    Select Cash Voucher Type
    Input Reward Value
    Click Add Reward button
    Select Cash Voucher Type (2)
    Input Reward Stamp
    Input Reward Value (2)
    Click Next button (reward)
Step 3 => Create Cash Voucher Loyalty with Multiple Rewards
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully