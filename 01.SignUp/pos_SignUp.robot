*** Settings ***
Documentation       Verify "Sign Up" features is working properly
Library             Selenium2Library
Library             String
Library             DatabaseLibrary
Library             OperatingSystem
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_SetupBrand.robot
Suite Setup         Connect To Database     pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
#Suite Teardown      Close Browser


*** Test Cases ***
Verify New Member Signup is Successfully
    Verify Signup with valid credential is working properly
    Verify Company Detail Setup is Successfully
    Verify setup brand features is working properly




*** Keywords ***
Verify Signup with valid credential is working properly
    Open Signup Page
    Click Sign Up button
    Input First Name
    input Last Name
    Select Phone Code
    Input Phone Number
    Input Email
    Input Password
    Input Confirm Password
    Click Agree to the spurr term
    Click SignUp (Save)
    Verify OTP page is displayed properly
    Input OTP
    Click Verify button
    Delay
Verify Company Detail Setup is Successfully
    Search Company
    Checklist Send Me Updates
    Click Get Started Button
Verify setup brand features is working properly
    Select Business Type
    Input Brand Name
    Select Logo
    Select Background
    Checkbox Use Infromation
    Input Short Location
    Click Complete Setup
    Verify SetUp Brand is successfully