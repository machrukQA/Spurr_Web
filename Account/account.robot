*** Settings ***
Documentation       Verify "Account Details" is working properly
Library             Selenium2Library
Library             String
Library             DatabaseLibrary
Library             OperatingSystem
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_Account.robot
Resource            ../../Resources/res_dbCvm.robot
Suite Setup         Connect To Database     pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
#Suite Teardown      Close Browser

*** Test Cases ***

Verify the features On Account Details are working properly
    Go to Account Details
    #Verify Edit Phone Number is Successfully
    #Verify Phone Number is Successfully
    #Verify Edit Email is Successfully
    #Verify Email is Successfully
    Click Download Receipt button




*** Keywords ***
Go to Account Details
    Open Browser                            ${url}                          ${browser}
    Maximize Browser Window
    Wait Until Element is Enabled           ${btn_Signup}                   ${delay}
    Valid Login with New Password
    Sleep                                   2
    Click Profile Menu
    Click Account Menu
Verify Edit Phone Number is Successfully
    Delete Verified Phone
    Click Edit Details
    Edit First Name
    Edit Last Name
    Edit Mobile Number
    Save Edit Account Details
    Verify Success Message is displayed after account edited
    #Click Edit Details
    #Edit back to Valid Number
    #Save Edit Account Details
    #Verify Success Message is displayed after account edited
Verify Phone Number is Successfully
    Enter OTP Code
    Phone Number is Verified
Verify Edit Email is Successfully
    Delete Verified Phone
    Click Edit Details
    Edit First Name
    Edit Last Name
    Edit Email
    Save Edit Account Details
    Verify Success Message is displayed after account edited
Verify Email is Successfully
    Retype Code in Email
    Email is Verified
Verify Download Receipt is successfully
    Click Download Receipt button
