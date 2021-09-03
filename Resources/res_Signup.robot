*** Settings ***
Library             DatabaseLibrary
Library             OperatingSystem


*** Variables ***
${delay}                    10
${url}                      https://app-dev-v2.gospurr.com/
${browser}                  chrome

${btn_Signup}               xpath://a[contains(text(),'SIGN UP')]
${menu_account}             xpath://a[contains(text(),'Account')]


#SignUp Page
${field_FirstName}          id:first_name
${field_LastName}           id:last_name
${field_PhoneCode}          id:select2-sel-code-container
${input_PhoneCode}          xpath://span[@class='select2-search select2-search--dropdown']/input
${slct_PhoneCode}           xpath://*[@id='select2-sel-code-results']/li[contains(text(),'Indonesia (+62)')]
${field_PhoneNo}            id:phone
${field_Email}              id:email
${field_Pwd}                id:password
${field_CnfrmPwd}           id:confirm_password
${chckbox_Agree}            xpath://*[contains(text(),'I agree to the Spurr')]
${btn_SignupSave}           id:signup_button

#Signup Data
${valid_FirstName}          Machruk
${valid_LastName}           Marjuki
${valid_PhoneNo}            85281114886
${valid_Email}              machruk@gospurr.com
${new_Email}                @gospurr.com
${valid_Pwd}                Qwerty123
${newPwd}                   Qwerty

${invalid_Pwd}              jackqwerty
${invalid_Email}            @gospurr

#Warning Messages
${wrngMsg_Email}            Invalid Email Address
${wrngMsg_EmailRgstred}     Email already registered
${wrngMsg_Phone}            Mobile number can't be empty
${wrngMsg_PwdEmpty}         Password can't be empty
${wrngMsg_Pwd}              Password is weak, must combine between A-Z a-z 0-9
${wrngMsg_Pwd2}             Password didn't match
${wrngMsg_Term}             Please select Spurr Terms of Service

#Verify Page
${timer}                    id:timer
${btn_verify}               id:verify_button
${field_verCode1}           id:input1
${field_verCode2}           id:input2
${field_verCode3}           id:input3
${field_verCode4}           id:input4
${field_verCode5}           id:input5
${field_verCode6}           id:input6
${link_Term}                xpath://a[contains(text(),'Terms of Service')]
${link_Privacy}             xpath://a[contains(text(),'Privacy Policy')]

#Login Page
${field_Usrname}            id:email
${field_Pwd}                id:password
${btn_Signin}               id:label-button
${link_FrgtPwd}             xpath://a[contains(text(),'Forgot your password?')]
${success_Login}            xpath://*[@id='label-button'][contains(text(),'Success!')]
${menu_Dshbrd}              xpath://a[contains(text(),'Dashboard')]

#Outlet SetUp
${field_searchCmpny}        id:outlet_name
${field_addressCmpny}       id:text_outlet_address
${field_contactCmpny}       id:input_outlet_phone
${chckbox_sendMeUpdate}     xpath://body[1]/ul[1]/li[2]/div[2]/ul[1]/li[4]/a[1]/span[1]
${btn_getStarted}           id:outlet_button
${companyName}              Indonesia Convention Exhibition (ICE) BSD City
${matched_CompanyName}      xpath://*[@class='pac-matched'][contains(text(),'Indonesia Convention Exhibition (ICE) BSD City')]

${profileMenu}              xpath://header/ul[1]/li[3]/a[1]/span[1]/img[1]
${accountMenu}              xpath://a[contains(text(),'Account')]
${signOut}                  xpath://a[contains(text(),'Sign Out')]

${image}                    /Users/machruk/Documents/Gift.png

#DB
${DBName}       cvm_v2
${DBUser}       qa
${DBPass}       DWkg8yNJjZMYFwgd
${DBHost}       34.68.209.108
${DBPort}       3306
${memberId}     076811a1-dcf1-11eb-bce9-42010a715007


*** Keywords ***
Waiting to Load
    Sleep                                   5
Delay
    Sleep                                   3



Open GoSpurr.com
    Open Browser                            ${url}                          ${browser}
    Maximize Browser Window
    Wait Until Element is Enabled           ${btn_Signup}                   ${delay}
    #Valid Login
    Valid Login with New Password
    Waiting to Load
Open Signup Page
    Open Browser                            ${url}                          ${browser}
    Maximize Browser Window
    Wait Until Element is Enabled           ${btn_Signup}                   ${delay}

Click Sign Up button
    Click Element                           ${btn_Signup}
    Wait Until Element is Enabled           ${field_PhoneCode}              ${delay}
    Waiting to Load
Input First Name
    Wait Until Element is Enabled           ${field_FirstName}              ${delay}
    Input Text                              ${field_FirstName}              ${valid_FirstName}
Input Last Name
    Input Text                              ${field_LastName}               ${valid_LastName}
Select Phone Code
    Wait Until Element is Enabled           ${field_PhoneCode}              ${delay}
    Click Element                           ${field_PhoneCode}
    Input Text                              ${input_PhoneCode}              Indonesia
    Click Element                           ${slct_PhoneCode}


Input Phone Number
    #${RANDOM} =                             Generate Random String          8   [NUMBERS]
    Input Text                              ${field_PhoneNo}                ${valid_PhoneNo}
Input Email
    Input Text                              ${field_Email}                  ${valid_Email}
Input New Email
    ${RANDOM} =                             Generate Random String          6
    Input Text                              ${field_Email}                  Auto_${Random}${new_Email}
Input Password
    Input Text                              ${field_Pwd}                    ${valid_Pwd}
Input Confirm Password
    Input Text                              ${field_CnfrmPwd}               ${valid_Pwd}
Click Agree to the spurr term
    Wait Until Element is Enabled           ${chckbox_Agree}                ${delay}
    Click Element                           ${chckbox_Agree}
Click SignUp (Save)
    Click Button                            ${btn_SignupSave}

#Negative SignUp Test Cases
Input Invalid Email Address
    Input Text                              ${field_Email}                  ${invalid_Email}
Warning Message is displayed when email address is invalid
    Wait Until Page Contains                ${wrngMsg_Email}                ${delay}
    Page Should Contain                     ${wrngMsg_Email}
Warning Message is displayed when email address already registered
    Wait Until Page Contains                ${wrngMsg_EmailRgstred}         ${delay}
    Page Should Contain                     ${wrngMsg_EmailRgstred}
Input Weak Password
    Input Text                              ${field_Pwd}                    ${invalid_Pwd}
Warning Message is displayed when password is empty
    Wait Until Page Contains                ${wrngMsg_PwdEmpty}             ${delay}
    Page Should Contain                     ${wrngMsg_PwdEmpty}
Warning Message is displayed when password is weak
    Wait Until Page Contains                ${wrngMsg_Pwd}                  ${delay}
    Page Should Contain                     ${wrngMsg_Pwd}
Input Invalid Confirm Password
    Input Text                              ${field_CnfrmPwd}               ${invalid_Pwd}
Warning Message is displayed when password didn't match
    Wait Until Page Contains                ${wrngMsg_Pwd2}                 ${delay}
    Page Should Contain                     ${wrngMsg_Pwd2}
Warning Message is displayed when phone number is empty
    Wait Until Page Contains                ${wrngMsg_Phone}                ${delay}
    Page Should Contain                     ${wrngMsg_Phone}
Warning Message is displayed when agreement is unchecked
    Wait Until Page Contains                ${wrngMsg_Term}                 ${delay}
    Page Should Contain                     ${wrngMsg_Term}
Verify OTP page is displayed properly
    Wait Until Page Contains Element        ${timer}                        ${delay}
    Page Should Contain Element             ${timer}
    Page Should Contain Element             ${field_verCode1}
    Page Should Contain Element             ${field_verCode2}
    Page Should Contain Element             ${field_verCode3}
    Page Should Contain Element             ${field_verCode4}
    Page Should Contain Element             ${field_verCode5}
    Page Should Contain Element             ${field_verCode6}
    Page Should Contain Element             ${btn_verify}
    Page Should Contain Element             ${link_Term}
    Page Should Contain Element             ${link_Privacy}

Input OTP
    Sleep                                   5
    ${getOTP}           Query               select phone_codes_code from transaction_phone_codes where phone_codes_phone="+62"'${valid_PhoneNo}'
    Input Text                              ${field_verCode1}               ${getOTP}

Click Verify button
    Wait Until Element is Enabled           ${btn_verify}                   ${delay}
    Click Element                           ${btn_verify}

#Sign Out
Click Profile Menu
    Wait Until Element is Enabled           ${profileMenu}                  ${delay}
    Click Element                           ${profileMenu}
Click Sign Out
    Wait Until Element is Enabled           ${signOut}                      ${delay}
    Click Element                           ${signOut}


#SignIn
Input Username
    Wait Until Element is Enabled           ${field_Usrname}                ${delay}
    Input Text                              ${field_Usrname}                ${valid_Email}
Input Password Login
    Input Text                              ${field_Pwd}                    ${valid_Pwd}
Click Login button
    Click Element                           ${btn_Signin}
Verify Login is successfully
    Wait Until Element is Enabled           ${menu_Dshbrd}                  ${delay}
    Page Should Contain Element             ${menu_Dshbrd}

Input New Username
    Wait Until Element is Enabled           ${field_Usrname}                ${delay}
    Input Text                              ${field_Usrname}                ${valid_Email}
New Password
    Input Text                              ${field_Pwd}                    ${newPwd}



Valid Login
    Input Username
    Input Password Login
    Click Login button
    Verify Login is successfully

Valid Login with New Password
    Input New Username
    New Password
    Click Login button
    Verify Login is successfully

Sign Out
    Click Profile Menu
    Click Sign Out



#Negative SignIn
Input Invalid Username
    Wait Until Element is Enabled           ${field_Usrname}                ${delay}
    Input Text                              ${field_Usrname}                ${invalid_Email}
Input Invalid Password Login
    Input Text                              ${field_Pwd}                    ${invalid_Pwd}


#Company Detail Setup
Search Company
    Wait Until Element is Enabled           ${field_searchCmpny}            ${delay}
    Input Text                              ${field_searchCmpny}            ${companyName}
    Click Element                           ${field_searchCmpny}
    Wait Until Element is Enabled           ${matched_CompanyName}          ${delay}
    Click Element                           ${matched_CompanyName}
Checklist Send Me Updates
    Wait Until Element is Enabled           ${chckbox_sendMeUpdate}         ${delay}
    Click Element                           ${chckbox_sendMeUpdate}
Click Get Started Button
    Sleep                                   2
    Wait Until Element is Enabled           ${btn_getStarted}               ${delay}
    Click Element                           ${btn_getStarted}

###Go to Account Detail###
Click Account Menu
    Wait Until Element is Enabled           ${menu_account}                 ${delay}
    Click Element                           ${menu_account}

