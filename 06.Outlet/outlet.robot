*** Settings ***
Documentation       Verify the features On Outlet Menu are working properly
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_Outlet.robot
Suite Setup         Open GoSpurr.com
Suite Teardown      Close Browser

*** Test Cases ***
Verify the features On Outlet Menu are working properly
    Go to Outlet Menu
    Verify Edit Company is Successfully
    Verify Add Outlet is Successfully
    Verify Edit Outlet is Successfully
    Verify Upload Brand Photo is Successfully
    Verify Upload Brand Cover is Successfully
    Verify Edit Brand Details are Successfully





*** Keywords ***
Verify Edit Company is Successfully
    Click Edit Company Details
    Edit Company Name
    Edit Company Mobile Number
    Edit Company Email
    Click Save Edit Company
    Verify Success Message is displayed after Company edited
Verify Upload Brand Photo is Successfully
    Upload Photo Brand
    Verify Success Message is displayed after Photo Uploaded
Verify Upload Brand Cover is Successfully
    Upload Cover Brand
    Verify Success Message is displayed after Cover Uploaded
Verify Edit Brand Details are Successfully
    Click Edit Details
    Edit Brand Name
    Edit Businness Type
    Click Save Edit Brand
    Verify Success Message is displayed after Brand edited
Verify Add Outlet is Successfully
    Click Add Outlet
    Input Location
    Input First Name Outlet
    Input Last Name Outlet
    Select Country Code Outlet
    Input Mobile Number Outlet
    Input Email Outlet
    Click Save Add Outlet
    Verify Success Message is displayed after Outlet Added
Verify Edit Outlet is Successfully
    Click Edit Outlet icon
    Edit Location
    Edit First Name Outlet
    Edit Last Name Outlet
    Edit Country Code Outlet
    Edit Mobile Number Outlet
    Edit Email Outlet
    Click Save Edit Outlet
    Verify Success Message is displayed after Outlet Edited