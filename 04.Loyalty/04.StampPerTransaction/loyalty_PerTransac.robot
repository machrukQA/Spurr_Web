*** Settings ***
Documentation       Verify Create "1 Stamp per Transaction" features is working properly
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_04PerTransac.robot
Suite Setup         Open GoSpurr.com
Suite Teardown      Close Browser

*** Test Cases ***






*** Keywords ***
Verify Create Free Gift Loyalty (Visit Based) is successfully
    Step 1 => Create Free Gift Loyalty
    Step 2 => Create Free Gift Loyalty
    Step 3 => Create Free Gift Loyalty

Verify Create Free Gift Loyalty (Visit Based) with Multiple Rewards is successfully
    Step 1 => Create Free Gift Loyalty with Multiple Rewards
    Step 2 => Create Free Gift Loyalty with Multiple Rewards
    Step 3 => Create Free Gift Loyalty with Multiple Rewards

Verify Create Cash Voucher Loyalty (Visit Based) is successfully
    Step 1 => Create Cash Voucher Loyalty
    Step 2 => Create Cash Voucher Loyalty
    Step 3 => Create Cash Voucher Loyalty

Verify Create Cash Voucher Loyalty (Visit Based) with Multiple Rewards is successfully
    Step 1 => Create Cash Voucher Loyalty with Multiple Rewards
    Step 2 => Create Cash Voucher Loyalty with Multiple Rewards
    Step 3 => Create Cash Voucher Loyalty with Multiple Rewards





#Free Gift
Verify Create "1 Stamp per Transaction" - Free Gift Type (Step 1)is successfully
    Go to Loyalty Page
    Select 1 Stamp per Transaction
    Input Total Number Stamp
    Input Minimum Spend
    Select Loyalty Period
    Click Next Button
    Verify Reward Details are Displayed Properly
Verify Create "1 Stamp per Transaction" - Free Gift Type (Step 2)is successfully
    Select Free Gift Type
    Input Reward Value
    Input Reward Name
    Upload Image
    Click Next button (reward)
Verify Create "1 Stamp per Transaction" - Free Gift Type (Step 3)is successfully
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully

#Cash Voucher
Verify Create "1 Stamp per Transaction" - Cash Voucher Type (Step 1)is successfully
    Go to Loyalty Page
    Select 1 Stamp per Transaction
    Input Total Number Stamp
    Input Minimum Spend
    Select Loyalty Period
    Click Next Button
    Verify Reward Details are Displayed Properly
Verify Create "1 Stamp per Transaction" - Cash Voucher Type (Step 2)is successfully
    Select Cash Voucher Type
    Input Reward Value
    Click Next button (reward)
Verify Create "1 Stamp per Transaction" - Cash Voucher Type (Step 3)is successfully
    Verify Term & Condition Checkbox are selected
    Add Term of Service
    Click Publish button
    Verify Publish Reward is Successfully

