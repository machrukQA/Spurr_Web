*** Settings ***
Documentation       Verify "Setting" features are working properly
Library             Selenium2Library
Library             String
Library             DatabaseLibrary
Library             OperatingSystem
Library             RPA.PDF
Resource            ../../Resources/res_Signup.robot
Resource            ../../Resources/res_Setting.robot
#Resource            ../../Resources/res_dbCvm.robot
#Suite Setup         Connect To Database     pymysql  ${DBName}   ${DBUser}   ${DBPass}   ${DBHost}   ${DBPort}
Suite Teardown      Close Browser
Suite Setup         Go to Setting Menu

*** Test Cases ***
Verify Activate Spurr Check-In is Successfully
    Activate Spurr Check-In
Verify Activate Check-In Temperature is
    Activate Check-In Temperature
Verify Download Check-In QR Code is Successfully
    Generate Check-In QR Code
Verify Download Table Standee is Successfully
    Download Table Standee
Verify Spurr Partner Apps Download button is working properly
    Download Spurr Partner Apps





*** Keywords ***
Verify Activate Spurr Check-In is Successfully
    Activate Spurr Check-In
Verify Activate Check-In Temperature is
    Activate Check-In Temperature
Verify Download Check-In QR Code is Successfully
    Generate Check-In QR Code
Verify Download Table Standee is Successfully
    Download Table Standee
Verify Spurr Partner Apps Download button is working properly
    Download Spurr Partner Apps