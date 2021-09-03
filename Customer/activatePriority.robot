*** Settings ***
Documentation       Verify Activate Priority Customer is successfully
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_customer.robot
Resource            ../../Resources/res_dbShopick.robot
Suite Setup         Connect To Database     pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
#Suite Teardown      Close Browser




*** Test Cases ***
Delete Priority Status from DB
    Delete Priority Status from DB

Go to Customer menu
    Go to Customer menu

Verify Activate & Edit Stamp type (6 months) is successfully
    Verify Activate Stamp type (6 months) is successfully
    Verify Edit Stamp to Spent type (12 months) is successfully
    Sleep           5

Verify Activate & Edit Spent Type (12 months) is successfully
    Delete Priority Status from DB
    Reload Page
    Sleep            5
    Verify Activate Spent Type (12 months) is successfully
    Verify Edit Spent to Stamp type (6 months) is successfully

Verify Edit Period is successfully
    Verify Edit Period is successfully


*** Keywords ***
###Activate Priority Customer###
Verify Activate Stamp type (6 months) is successfully
    Click Activate Priority Customers
    Select Stamp Type
    Input Target Stamp/Spend
    Select 6 Months Earning
    #Select 6 Months Validity
    Add Term & Conditions
    Click Publish Priority
    Verify Success Message is displayed
Verify Activate Spent Type (12 months) is successfully
    Click Activate Priority Customers
    Select Stamp Type
    Input Target Stamp/Spend
    Select 12 Months Earning
    #Select 12 Months Validity
    Add Term & Conditions
    Click Publish Priority
    Verify Success Message is displayed



###Edit Segment
Verify Edit Stamp to Spent type (12 months) is successfully
    Click Edit Segment
    Edit to Spent Type
    Edit Target Stamp/Spend
    Edit to 12 Months Earning
    #Select 6 Months Validity
    Edit Term & Conditions
    Click Publish Priority
    Verify Success Message is displayed
Verify Edit Spent to Stamp type (6 months) is successfully
    Click Edit Segment
    Edit to Stamp Type
    Edit Target Stamp/Spend
    Edit to 6 Months Earning
    #Select 6 Months Validity
    Edit Term & Conditions
    Click Publish Priority
    Verify Success Message is displayed


###Edit Period
Verify Edit Period is successfully
    Click Edit Period button
    Edit Period
    Click Submit Edit Period
    Verify Success Message is displayed after period edited
