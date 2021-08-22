*** Settings ***
Documentation       Verify Login with invalid credentials displays a warning message
Library             Selenium2Library
Library             DatabaseLibrary
Library             OperatingSystem
Resource            ../../Resources/res_Signup.robot
Suite Setup         Open GoSpurr.com
Suite Teardown      Close Browser

*** Test Cases ***
Verify warning message is displayed when login without username
    Verify warning message is displayed when login without username

Verify warning message is displayed when login without password
    Verify warning message is displayed when login without password

Verify warning message is displayed when login with invalid username
    Verify warning message is displayed when login with invalid username

Verify warning message is displayed when login with invalid password
    Verify warning message is displayed when login with invalid password




*** Keywords ***
Verify warning message is displayed when login without username
    Input Password Login
    Click Login button
    reload page

Verify warning message is displayed when login without password
    Input Username
    Click Login button
    reload page

Verify warning message is displayed when login with invalid username
    Input Invalid Username
    Input Password Login
    Click Login button
    reload page

Verify warning message is displayed when login with invalid password
    Input Username
    Input Invalid Password Login
    Click Login button
    reload page
    Valid Login