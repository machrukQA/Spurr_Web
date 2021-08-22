*** Settings ***
Documentation       Verify Login with valid credential is successfully
Library             Selenium2Library
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_Signup.robot
Suite Setup         Open GoSpurr.com
Suite Teardown      Close Browser


*** Test Cases ***
Verify Login with valid credential is successfully
    Valid Login


