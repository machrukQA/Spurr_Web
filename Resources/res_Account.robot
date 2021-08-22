*** Variables ***

### Account Details ###
${btn_editDetails}          xpath://body[1]/ul[1]/li[2]/section[1]/div[3]/div[1]/ul[1]/li[1]/a[1]
${fld_editFn}               xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[1]/input[1]
${fld_editLn}               xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[2]/input[1]
${fld_editMobNo}            xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[3]/input[1]
${fld_editEmail}            xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[4]/input[1]
${fld_otpCode}              xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[3]/ul[1]/li[1]/input[1]
${fld_retypeCode}           xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[4]/ul[1]/li[1]/input[1]
${btn_VerifyPhone}          xpath://body[1]/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[3]/ul[1]/li[3]/button[1]
${btn_cancelVerify}         xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[3]/ul[1]/li[2]/button[1]
${btn_saveEdit}             xpath://body[1]/ul[1]/li[2]/section[1]/div[3]/div[1]/ul[2]/li[2]/a[1]
${btn_cancelEdit}           xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[4]/ul[1]/li[2]/button[1]
${link_resend}              xpath://body/ul[1]/li[2]/section[1]/div[3]/ul[1]/li[3]/ul[1]/li[1]/div[1]/a[1]

${fnEdited}                 Machruk
${lnEdited}                 Marjuki
${mobNoEdited}              +6285281114886
${validNo}                  +6285281114886
${emailEdited}              machruk@gospurr.com
${edit_sucMsg}              Data is successfully saved
${btn_closeSucMsg}          xpath://body[1]/div[4]/div[3]/ul[1]/li[1]/button[1]
${SucMsg_phoneVerified}     Your phone is verified.
${marking_verified}         Verified!
${SucMsg_EmailVerified}     Your email is verified.




*** Keywords ***
###Edit Account###
Click Edit Details
    Sleep                                   2
    wait until element is enabled           ${btn_editDetails}          ${delay}
    click element                           ${btn_editDetails}
Edit First Name
    wait until element is enabled           ${fld_editFn}               ${delay}
    input text                              ${fld_editFn}               ${fnEdited}
Edit Last Name
    wait until element is enabled           ${fld_editLn}               ${delay}
    input text                              ${fld_editLn}               ${lnEdited}
Edit Mobile Number
    wait until element is enabled           ${fld_editMobNo}            ${delay}
    input text                              ${fld_editMobNo}            ${mobNoEdited}
Edit back to Valid Number
    wait until element is enabled           ${fld_editMobNo}            ${delay}
    input text                              ${fld_editMobNo}            ${validNo}
Edit Email
    wait until element is enabled           ${fld_editEmail}            ${delay}
    input text                              ${fld_editEmail}            ${emailEdited}
Save Edit Account Details
    wait until element is enabled           ${btn_saveEdit}             ${delay}
    click element                           ${btn_saveEdit}
    Sleep                                   3
Verify Success Message is displayed after account edited
    Wait Until Page Contains Element        ${btn_closeSucMsg}          ${delay}
    Page Should Contain                     ${edit_sucMsg}
    Click Element                           ${btn_closeSucMsg}
    Sleep                                   2

Enter OTP Code
    Sleep                                   2
    ${getOTP}                   Query       select phone_codes_code from transaction_phone_codes where phone_codes_phone='${mobNoEdited}'
    Input Text                              ${fld_otpCode}              ${getOTP}
    Click Element                           ${btn_VerifyPhone}
    Sleep                                   3
Phone Number is Verified
    Wait Until Element is Enabled           ${btn_closeSucMsg}          ${delay}
    Page Should Contain                     ${SucMsg_phoneVerified}
    Click Element                           ${btn_closeSucMsg}
    Sleep                                   2

Retype Code in Email
    ${getEmailCode}             Query       select user_email_verification_code from master_user where user_email='${emailEdited}'
    Input Text                              ${fld_retypeCode}           ${getEmailCode}
Email is Verified
    Wait Until Element is Enabled           ${btn_closeSucMsg}          ${delay}
    Page Should Contain                     ${SucMsg_EmailVerified}
    Click Element                           ${btn_closeSucMsg}
    Sleep                                   2



