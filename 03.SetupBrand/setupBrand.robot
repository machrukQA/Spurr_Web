*** Settings ***
Documentation       Verify setup brand features is working properly
Library             SeleniumLibrary
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_SetupBrand.robot
Suite Setup         Open GoSpurr.com
#Suite Teardown      Close Browser



*** Test Cases ***
Verify setup brand features is working properly
    Verify setup brand features is working properly




*** Keywords ***
Verify setup brand features is working properly
    Select Business Type
    Input Brand Name
    Select Logo
    Select Background
    Checkbox Use Infromation
    Input Short Location
    #Add Administrator Email
    Click Complete Setup
    Verify SetUp Brand is successfully

