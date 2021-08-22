*** Settings ***
Documentation       Verify the features On User Menu are working properly
Library             Selenium2Library
Library             DateTime
Library             String
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_User.robot
Suite Setup         Open GoSpurr.com
Suite Teardown      Close Browser

*** Test Cases ***
Verify the features On User Menu are working properly
    Go to User Menu
    Verify Add User feature is working properly
    Verify Edit User is successfully
    Verify Edit Detail is successfully
    Verify Reset Password is successfully
    Go to User Menu
    Verify Upload Image is successfully


*** Keywords ***
Verify Add User feature is working properly
    Click Add User
    Add User First Name
    Add User Last Name
    Add Country Code
    Add Mobile Number
    Add Email
    Add Outlet
    Add Group
    Click Save Add User
    Waiting to Load
Verify Edit User is successfully
    Click Edit Icon
    Edit User First Name
    Edit User Last Name
    Edit User Mobile Number
    Edit User Email
    Click Save User Edited
    Verify Success Message after editing is displayed
Verify Edit Detail is successfully
    Click Edit Details
    Edit First Name
    Edit Last Name
    Edit Mobile Number
    Edit Email
    Click Save Edited Details
    Click Edit Details
    Restore First Name
    Restore Last Name
    Restore Mobile Number
    Restore Email
    Click Save Edited Details
    Waiting to Load
Verify Reset Password is successfully
    Click Reset Password
    Input New Password
    Confirm New Password
    Save New Password
    Verify Success Message after update password is displayed
    Sign Out
    Valid Login with New Password
    Waiting to Load
Verify Upload Image is successfully
    Upload Profile Image
    Verify Success Message is displayed
