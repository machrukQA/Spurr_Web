*** Settings ***
Documentation       Verify Create "Customer Accumulates Spend" features is working properly
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_02AccSpend.robot
Suite Setup         Open GoSpurr.com
Suite Teardown      Close Browser

*** Test Cases ***
Verify Create Cash Voucher Loyalty (Spend Meter) with Multiple Rewards is successfully
    Step 1 => Create Cash Voucher Loyalty with Multiple Rewards
    Step 2 => Create Cash Voucher Loyalty with Multiple Rewards
    Step 3 => Create Cash Voucher Loyalty with Multiple Rewards





*** Keywords ***
Verify Create Free Gift Loyalty (Spend Meter) is successfully
    Step 1 => Create Free Gift Loyalty
    Step 2 => Create Free Gift Loyalty
    Step 3 => Create Free Gift Loyalty

Verify Create Free Gift Loyalty (Spend Meter) with Multiple Rewards is successfully
    Step 1 => Create Free Gift Loyalty with Multiple Rewards
    Step 2 => Create Free Gift Loyalty with Multiple Rewards
    Step 3 => Create Free Gift Loyalty with Multiple Rewards

Verify Create Cash Voucher Loyalty (Spend Meter) is successfully
    Step 1 => Create Cash Voucher Loyalty
    Step 2 => Create Cash Voucher Loyalty
    Step 3 => Create Cash Voucher Loyalty

Verify Create Cash Voucher Loyalty (Spend Meter) with Multiple Rewards is successfully
    Step 1 => Create Cash Voucher Loyalty with Multiple Rewards
    Step 2 => Create Cash Voucher Loyalty with Multiple Rewards
    Step 3 => Create Cash Voucher Loyalty with Multiple Rewards









###Step by Step of Scenario
#Verify Create Free Gift Loyalty (Spend Meter) is successfully
Step 1 => Create Free Gift Loyalty
    Go to Loyalty Page
    Select Accumulates Spend
    Input Total Spend
    Select Loyalty Period
    Click Next Button
    Verify Reward Details are Displayed Properly
Step 2 => Create Free Gift Loyalty
    Select Free Gift Type
    Input Reward Value
    Input Reward Name
    Upload Image
    Click Next button (reward)
Step 3 => Create Free Gift Loyalty
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully


#Verify Create Free Gift Loyalty (Spend Meter) with Multiple Rewards is successfully
Step 1 => Create Free Gift Loyalty with Multiple Rewards
    Go to Loyalty Page
    Select Accumulates Spend
    Input Total Spend
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
    Click Next button (reward)
Step 3 => Create Free Gift Loyalty with Multiple Rewards
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully



#Verify Create Cash Voucher Loyalty (Spend Meter) is successfully
Step 1 => Create Cash Voucher Loyalty
    Go to Loyalty Page
    Select Accumulates Spend
    Input Total Spend
    Select Loyalty Period
    Click Next Button
    Verify Reward Details are Displayed Properly
Step 2 => Create Cash Voucher Loyalty
    Select Cash Voucher Type
    #Input Target Spend
    Input Reward Value
    Click Next button (reward)
Step 3 => Create Cash Voucher Loyalty
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully

#Verify Create Cash Voucher Loyalty (Spend Meter) with Multiple Rewards is successfully
Step 1 => Create Cash Voucher Loyalty with Multiple Rewards
    Go to Loyalty Page
    Select Accumulates Spend
    Input Total Spend
    Select Loyalty Period
    Click Next Button
    Verify Reward Details are Displayed Properly
Step 2 => Create Cash Voucher Loyalty with Multiple Rewards
    Select Cash Voucher Type
    Input Reward Value
    Click Add Reward button
    Select Cash Voucher Type (2)
    #Input Target Spend (2)
    Input Reward Value (2)
    Input Target Spend
    Click Next button (reward)
Step 3 => Create Cash Voucher Loyalty with Multiple Rewards
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully