*** Variables ***
${menu_user}                    xpath://body/ul[1]/li[1]/ul[1]/li[6]/a[1]
#Edit Details
${btn_uploadImage}              xpath://body[1]/ul[1]/li[2]/section[1]/ul[1]/li[1]/div[1]/div[1]/input[1]
${btn_editDetail}               xpath://a[contains(text(),'EDIT DETAILS')]
${btn_saveUserDet}              xpath://*[@class='save-user-detail'][contains(text(),'SAVE')]
${btn_cancelEdit}               xpath://*[@class='done-edit-user-detail'][contains(text(),'CANCEL')]
${field_editFn}                 xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[2]/div[1]/ul[1]/li[1]/input[1]
${field_editLn}                 xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[2]/div[1]/ul[1]/li[2]/input[1]
${field_EditMobNo}              xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[2]/div[1]/ul[1]/li[3]/input[1]
${field_editEmail}              xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[2]/div[1]/ul[1]/li[4]/input[1]
${edit_fn}                      machruk edited
${edit_ln}                      marjuki edited
${edit_mobileNo}                +628520000000
${edit_email}                   machrukedited@gospurr.com
${rest_mobileNo}                +6285281114886

#Filtering
${fltr_outlet}                  xpath://body[1]/ul[1]/li[2]/section[2]/div[1]/ul[2]/li[1]/span[1]/span[1]/span[1]/span[1]
${fltr_period}                  xpath://body[1]/ul[1]/li[2]/section[2]/div[1]/ul[2]/li[2]/span[1]/span[1]/span[1]/span[1]

#Upload Image
${image}                        /Users/machruk/Documents/Gift.png
${btn_crop}                     xpath://button[contains(text(),'Crop')]
${success_msg}                  Image is successfully uploaded
${btn_close}                    xpath://body[1]/div[3]/div[3]/ul[1]/li[1]/button[1]

#Add User
${btn_addUser}                  id:user-add-button
${field_addName}                xpath://body/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[1]/input[1]
${field_addLastName}            xpath://body/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[2]/input[1]
${drpdwn_cntryCode}             xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[3]/span[1]/span[1]/span[1]/span[1]
${field_addMblNo}               xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[4]/input[1]
${field_addEmail}               xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[5]/input[1]
${drpdwn_outlet}                xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[6]/span[1]/span[1]/span[1]
${outlet}                       xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[1]
${drpdwn_group}                 xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[7]/span[1]/span[1]/span[1]
${group_staff}                  xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[3]
${group_admin}                  xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[2]
${save_addUser}                 xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[2]
${cancel_addUser}               xpath://body/section[2]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[1]

${addName}                      AutoFName_
${addLastName}                  LN
${addEmail}                     @yopmail.com
${addMblNo}                     852

#Edit User
${btn_editUser}                 xpath://body[1]/ul[1]/li[2]/section[2]/div[2]/table[1]/tbody[1]/tr[1]/td[8]/a[1]/img[1]
${fld_editFnUser}               xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[1]/li[1]/input[1]
${fld_editLnUser}               xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[1]/li[2]/input[1]
${drpdwn_editCountry}           xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[1]/li[3]/input[1]
${fld_editMobNoUser}            xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[1]/li[4]/input[1]
${fld_email}                    xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[1]/li[5]/input[1]
${drpdwn_editOutlet}            xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[1]/li[6]/span[1]/span[1]/span[1]/span[1]
${drpdwn_editGroup}             xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[1]/li[7]/span[1]/span[1]/span[1]/span[1]
${btn_cncelEditUser}            xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[1]
${btn_saveEditUser}             xpath://body[1]/section[3]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[2]
${editFnUser}                   EditedFN_
${editLnUser}                   EditedLN_
${editMobNoUser}                853
${editEmailUser}                _edited@yopmail.com
${editSuccessMsg}               Data is successfully saved
${btn_closeSuccMsg}             xpath://body[1]/div[3]/div[3]/ul[1]/li[1]/button[1]

#Reset Password
${btn_resetPassword}            xpath://a[contains(text(),'RESET PASSWORD')]
${fld_newPwd}                   xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[1]/li[1]/input[1]
${fld_cnfrmPwd}                 xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[1]/li[2]/input[1]
${btn_saveNewPwd}               xpath://body/section[1]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[1]
${btn_cancelNewPwd}             xpath://body/section[1]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[1]
${SucMsg_newPwd}                Password is successfully updated
${btn_closeNewPwd}              xpath://button[contains(text(),'Close')]


*** Keywords ***
Go to User Menu
    set selenium implicit wait                  ${delay}
    wait until element is enabled               ${menu_user}                ${delay}
    click element                               ${menu_user}
    wait until page contains element            ${btn_uploadImage}          ${delay}


### Upload Image ###
Upload Profile Image
    set selenium implicit wait                  ${delay}
    wait until element is enabled               ${btn_uploadImage}          ${delay}
    choose file                                 ${btn_uploadImage}          ${image}
    sleep                                       5
    wait until element is enabled               ${btn_crop}                 ${delay}
    click element                               ${btn_crop}
Verify Success Message is displayed
    Wait Until Element is Enabled               ${btn_close}                ${delay}
    Page Should Contain                         ${success_msg}
    Click Element                               ${btn_close}
    Wait Until Element is Enabled               ${btn_addUser}              ${delay}
    Page Should Contain Element                 ${btn_addUser}
    Sleep                                       3

### Add User ###
Click Add User
    wait until element is enabled               ${btn_addUser}              ${delay}
    click element                               ${btn_addUser}
Add User First Name
    ${RANDOM} =                                 Generate Random String      4
    wait until element is enabled               ${field_addName}            ${delay}
    input text                                  ${field_addName}            ${addName}${RANDOM}
Add User Last Name
    ${RANDOM} =                                 Generate Random String      3
    wait until element is enabled               ${field_addLastName}        ${delay}
    input text                                  ${field_addLastName}        ${addLastName}${RANDOM}
Add Country Code
    wait until element is enabled               ${drpdwn_cntryCode}         ${delay}
    click element                               ${drpdwn_cntryCode}

Add Mobile Number
    ${RANDOM} =                                 Generate Random String      8   [NUMBERS]
    wait until element is enabled               ${field_addMblNo}           ${delay}
    input text                                  ${field_addMblNo}           ${addMblNo}${RANDOM}
Add Email
    ${RANDOM} =                                 Generate Random String      8
    wait until element is enabled               ${field_addEmail}           ${delay}
    input text                                  ${field_addEmail}           ${RANDOM}${addEmail}
Add Outlet
    wait until element is enabled               ${drpdwn_outlet}            ${delay}
    click element                               ${drpdwn_outlet}
    wait until element is enabled               ${outlet}                   ${delay}
    click element                               ${outlet}
Add Group
    wait until element is enabled               ${drpdwn_group}             ${delay}
    click element                               ${drpdwn_group}
    wait until element is enabled               ${group_staff}              ${delay}
    click element                               ${group_staff}
Click Save Add User
    wait until element is enabled               ${save_addUser}             ${delay}
    click element                               ${save_addUser}


### Edit Detail & Restore ###
Click Edit Details
    wait until element is enabled               ${btn_editDetail}           ${delay}
    click element                               ${btn_editDetail}
Edit First Name
    wait until element is enabled               ${field_editFn}             ${delay}
    input text                                  ${field_editFn}             ${edit_fn}
Edit Last Name
    wait until element is enabled               ${field_editLn}             ${delay}
    input text                                  ${field_editLn}             ${edit_ln}
Edit Mobile Number
    wait until element is enabled               ${field_EditMobNo}          ${delay}
    input text                                  ${field_EditMobNo}          ${edit_mobileNo}
Edit Email
    wait until element is enabled               ${field_editEmail}          ${delay}
    input text                                  ${field_editEmail}          ${edit_email}
Click Save Edited Details
    wait until element is enabled               ${btn_saveUserDet}          ${delay}
    Click Element                               ${btn_saveUserDet}
    Sleep                                       5
#Restore
Restore First Name
    wait until element is enabled               ${field_editFn}             ${delay}
    input text                                  ${field_editFn}             ${valid_FirstName}
Restore Last Name
    wait until element is enabled               ${field_editLn}             ${delay}
    input text                                  ${field_editLn}             ${valid_LastName}
Restore Mobile Number
    wait until element is enabled               ${field_EditMobNo}          ${delay}
    input text                                  ${field_EditMobNo}          ${rest_mobileNo}
Restore Email
    wait until element is enabled               ${field_editEmail}          ${delay}
    input text                                  ${field_editEmail}          ${valid_Email}




### Edit User ###
Click Edit Icon
    wait until element is enabled               ${btn_editUser}             ${delay}
    Click Element                               ${btn_editUser}
Edit User First Name
    ${RANDOM} =                                 Generate Random String      3
    wait until element is enabled               ${fld_editFnUser}           ${delay}
    input text                                  ${fld_editFnUser}           ${editFnUser}${RANDOM}
Edit User Last Name
    ${RANDOM} =                                 Generate Random String      3
    wait until element is enabled               ${fld_editLnUser}           ${delay}
    input text                                  ${fld_editLnUser}           ${editLnUser}${RANDOM}
Edit User Mobile Number
    ${RANDOM} =                                 Generate Random String      8   [NUMBERS]
    wait until element is enabled               ${fld_editMobNoUser}        ${delay}
    input text                                  ${fld_editMobNoUser}        ${editMobNoUser}${RANDOM}
Edit User Email
    ${RANDOM} =                                 Generate Random String      6
    wait until element is enabled               ${fld_email}                ${delay}
    input text                                  ${fld_email}                ${RANDOM}${editEmailUser}
Click Save User Edited
    wait until element is enabled               ${btn_saveEditUser}         ${delay}
    Click Element                               ${btn_saveEditUser}
Click Cancel User Edited
    wait until element is enabled               ${btn_cncelEditUser}        ${delay}
    Click Element                               ${btn_cncelEditUser}
Verify Success Message after editing is displayed
    Wait Until Element is Enabled               ${btn_closeSuccMsg}         ${delay}
    Page Should Contain                         ${editSuccessMsg}
    Click Element                               ${btn_closeSuccMsg}


### Reset Password ###
Click Reset Password
    wait until element is enabled               ${btn_resetPassword}        ${delay}
    Click Element                               ${btn_resetPassword}
Input New Password
    wait until element is enabled               ${fld_newPwd}               ${delay}
    input text                                  ${fld_newPwd}               ${newPwd}
Confirm New Password
    wait until element is enabled               ${fld_cnfrmPwd}             ${delay}
    input text                                  ${fld_cnfrmPwd}             ${newPwd}
Save New Password
    wait until element is enabled               ${btn_saveNewPwd}           ${delay}
    click element                               ${btn_saveNewPwd}
Verify Success Message after update password is displayed
    Wait Until Element is Enabled               ${btn_closeNewPwd}          ${delay}
    Page Should Contain                         ${SucMsg_newPwd}
    Click Element                               ${btn_closeNewPwd}












