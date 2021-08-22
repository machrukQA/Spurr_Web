*** Settings ***
Documentation       Verify "Sign Up" features is working properly
Library             Selenium2Library
Library             String
Resource            ../../Resources/res_Signup.robot
Suite Setup         Open GoSpurr.com
Suite Teardown      Close Browser


*** Test Cases ***
Verify "Sign Up" features is working properly
    Verify Warning Message is displayed when Signup with weak password
    Verify Warning Message is displayed when Signup with blank phone no
    Verify Warning Message is displayed when Signup with invalid Email Address
    Verify Warning Message is displayed when Signup with blank password
    Verify Warning Message is displayed when password didn't match
    Verify Warning Message is displayed when agreement is unchecked
    Verify Warning Message is displayed when Signup with registered email address




*** Keywords ***
Verify Warning Message is displayed when Signup with registered email address
    Input First Name
    input Last Name
    Input Phone Number
    Input Email
    Input Password
    Input Confirm Password
    Click Agree to the spurr term
    Click SignUp (Save)
    Warning Message is displayed when email address already registered
    Delay

Verify Warning Message is displayed when Signup with blank phone no
    Input First Name
    input Last Name
    Input Email
    Click SignUp (Save)
    Warning Message is displayed when phone number is empty
    Delay

Verify Warning Message is displayed when Signup with invalid Email Address
    Input Phone Number
    Input Invalid Email Address
    Click SignUp (Save)
    Warning Message is displayed when email address is invalid
    Delay

Verify Warning Message is displayed when Signup with blank password
    Input Email
    Click SignUp (Save)
    Warning Message is displayed when password is empty
    Delay

Verify Warning Message is displayed when Signup with weak password
    Click Sign Up button
    Input Weak Password
    Click SignUp (Save)
    Warning Message is displayed when password is weak
    reload page

Verify Warning Message is displayed when password didn't match
    Input Password
    Input Invalid Confirm Password
    Click SignUp (Save)
    Warning Message is displayed when password didn't match

Verify Warning Message is displayed when agreement is unchecked
    Input First Name
    input Last Name
    Input Phone Number
    Input Email
    Input Password
    Input Confirm Password
    Click SignUp (Save)
    Warning Message is displayed when agreement is unchecked