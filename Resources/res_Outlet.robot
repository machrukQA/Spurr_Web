*** Variables ***
${menu_outlet}              xpath://body/ul[1]/li[1]/ul[1]/li[5]/a[1]
${SucMsg_Edit}              Data is successfully saved
${btn_closeSucMsg}          xpath://body[1]/div[4]/div[3]/ul[1]/li[1]/button[1]

### Edit Company ###
${btn_editCompany}          xpath://*[@class='edit-comp-detail'][contains(text(),'EDIT DETAILS')]
${fld_searchOutlet}         id:outlet-location
${fld_companyAddress}       xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[1]/div[1]/ul[2]/li[1]/textarea[1]
${fld_contact}              xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[1]/div[1]/ul[2]/li[2]/input[1]
${fld_companyEmail}         xpath://body/ul[1]/li[2]/section[1]/ul[1]/li[1]/div[1]/ul[2]/li[3]/input[1]
${btn_saveCompEdit}         class:save-comp-detail
${btn_cancelCompEdit}       class:done-edit-comp-detail

${edit_companyName}         Rempah Djawa
${edit_matchCompnyName}     xpath://*[@class='pac-matched'][contains(text(),'${edit_companyName}')]
${edit_compnyAddress}       Blok G3, Jl. Wijaya Kusuma IV No.7, Tridaya Sakti, Kec. Tambun Sel., Bekasi, Jawa Barat 17510, Indonesia
${edit_compnyNo}            +628528111000
${edit_email}               machruk@gospurr.com


### Edit Brand ###
${btn_brandPhoto}           xpath://body[1]/ul[1]/li[2]/section[2]/ul[1]/li[1]/div[1]/div[1]/input[1]
${btn_brandCover}           xpath://body[1]/ul[1]/li[2]/section[2]/ul[1]/li[2]/div[1]/div[1]/input[1]
${btn_cropPhoto}            xpath://body[1]/div[1]/div[2]/ul[1]/li[2]/button[1]
${btn_cnclCropPhoto}        xpath://body[1]/div[1]/div[2]/ul[1]/li[1]/button[1]
${btn_cropCover}            xpath://body[1]/div[2]/div[2]/ul[1]/li[2]/button[1]
${btn_cnclCropCvr}          xpath://body[1]/div[2]/div[2]/ul[1]/li[1]/button[1]
${SucMsg_UploadLogo}        Logo is successfully uploaded
${SucMsg_UploadCover}       Feature image is successfully uploaded


${btn_editBrand}            class:edit-brand-detail
${fld_BrandName}            class:outlet-brand
${fld_editBusType}          xpath://body[1]/ul[1]/li[2]/section[2]/ul[1]/li[3]/div[1]/ul[1]/li[2]/span[1]/span[1]/span[1]/span[1]
${btn_saveBrandEdit}        class:save-brand-detail
${btn_cancelBrandEdit}      class:done-edit-brand-detail

${editBrandName}            BrandEdited_
${slct_BusType}             xpath://*[contains(text(),'Food Court')]

### Add Outlet ###
${btn_AddOutlet}            class:outlet-add-button
${fld_outletLoc}            id:outlet-add-location
${fld_outletAddress}        class:outlet-add-address outlet-add-input
${fld_fnOutlet}             xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[1]/li[3]/input[1]
${fld_lnOutlet}             xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[1]/li[4]/input[1]
${drpdwn_countryCode}       xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[1]/li[5]/span[1]/span[1]/span[1]/span[1]
${fld_outletPhone}          xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[1]/li[6]/input[1]
${fld_outletEmail}          xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[1]/li[7]/input[1]
${btn_cancelAddOutlet}      xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[1]
${btn_saveAddOutlet}        xpath://body[1]/section[1]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[2]
${sucMsg_added}             Outlet is successfully added

${outlet_loc}               East Jakarta
${match_loc}                xpath://*[@class='pac-matched'][contains(text(),'${outlet_loc}')]
${fnOutlet}                 AutoFN_
${mobileNoOutlet}           854
${emailOutlet}              _auto@yopmail.com
${fld_searchCountryCd}      xpath://body[1]/span[1]/span[1]/span[1]/input[1]
${countryCode}              Indonesia (+62)
${slct_countryCd}           xpath://*[@class='select2-results']//ul[1]//*[contains(text(),'Indonesia (+62')][1]

### Edit Outlet ###
${icon_editOutlet}          xpath://body[1]/ul[1]/li[2]/section[3]/div[2]/table[1]/tbody[1]/tr[1]/td[5]/a[1]/img[1]
${fld_editOutletLoc}        xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[1]/input[1]
${fld_editOutletAddress}    class:outlet-edit-address
${fld_editedFn}             xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[3]/input[1]
${fld_editedLn}             xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[4]/input[1]
${drpdwn_EditedCntryCd}     xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[5]/span[1]/span[1]/span[1]/span[1]
${fld_EditedSrchCntryCd}    xpath://body[1]/span[1]/span[1]/span[1]/input[1]
${fld_EditedPhone}          xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[6]/input[1]
${fld_EditedEmail}          xpath://body/section[2]/ul[1]/li[1]/div[1]/ul[1]/li[7]/input[1]
${btn_cancelEdit}           xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[1]
${btn_saveEdit}             xpath://body[1]/section[2]/ul[1]/li[1]/div[1]/ul[2]/li[1]/a[2]

${edited_loc}               Malang
${match_editedLoc}          xpath://*[@class='pac-matched'][contains(text(),'${edited_loc}')]
${edited_fn}                Edited_
${edited_mobNo}             855
${edited_email}             _edited@yopmail.com
${edited_countryCode}       Singapore (+65)
${slct_editedcountryCd}     xpath://*[@class='select2-results']//ul[1]//*[contains(text(),'${edited_countryCode}')]




*** Keywords ***
Go to Outlet Menu
    wait until element is enabled               ${menu_outlet}              ${delay}
    click element                               ${menu_outlet}
    wait until page contains element            ${btn_AddOutlet}            ${delay}
    Waiting to Load

### Edit Company Details ###
Click Edit Company Details
    wait until element is enabled               ${btn_editCompany}          ${delay}
    click element                               ${btn_editCompany}
Edit Company Name
    Wait Until Element is Enabled               ${fld_searchOutlet}         ${delay}
    Input Text                                  ${fld_searchOutlet}         ${edit_companyName}
    Click Element                               ${fld_searchOutlet}
    Wait Until Element is Enabled               ${edit_matchCompnyName}     ${delay}
    Click Element                               ${edit_matchCompnyName}
Edit Company Address
    wait until element is enabled               ${fld_companyAddress}       ${delay}
    input text                                  ${fld_companyAddress}       ${edit_compnyAddress}
Edit Company Mobile Number
    wait until element is enabled               ${fld_contact}              ${delay}
    input text                                  ${fld_contact}              ${edit_compnyNo}
Edit Company Email
    wait until element is enabled               ${fld_companyEmail}         ${delay}
    input text                                  ${fld_companyEmail}         ${edit_email}
Click Save Edit Company
    wait until element is enabled               ${btn_saveCompEdit}         ${delay}
    click element                               ${btn_saveCompEdit}
    Waiting to Load
Verify Success Message is displayed after Company edited
    Wait Until Element is Enabled               ${btn_closeSucMsg}          ${delay}
    Page Should Contain                         ${SucMsg_Edit}
    Click Element                               ${btn_closeSucMsg}
    Sleep                                       2
    Page Should Contain Element                 ${btn_brandPhoto}

### Edit Brand Details ###
Click Edit Details
    wait until element is enabled               ${btn_editBrand}            ${delay}
    click element                               ${btn_editBrand}
Edit Brand Name
    ${RANDOM} =                                 Generate Random String      5   [NUMBERS]
    wait until element is enabled               ${fld_BrandName}            ${delay}
    input text                                  ${fld_BrandName}            ${editBrandName}${RANDOM}
Edit Businness Type
    wait until element is enabled               ${fld_editBusType}          ${delay}
    click element                               ${fld_editBusType}
    wait until element is enabled               ${slct_BusType}             ${delay}
    click element                               ${slct_BusType}
Click Save Edit Brand
    wait until element is enabled               ${btn_saveBrandEdit}        ${delay}
    click element                               ${btn_saveBrandEdit}
    Waiting to Load
Verify Success Message is displayed after Brand edited
    Wait Until Element is Enabled               ${btn_closeSucMsg}          ${delay}
    Page Should Contain                         ${SucMsg_Edit}
    Click Element                               ${btn_closeSucMsg}
    Sleep                                       2
    Page Should Contain Element                 ${btn_brandPhoto}


### Upload - Photo Brand ###
Upload Photo Brand
    wait until element is enabled               ${btn_brandPhoto}           ${delay}
    choose file                                 ${btn_brandPhoto}           ${image}
    Sleep                                       2
    wait until element is enabled               ${btn_cropPhoto}            ${delay}
    click element                               ${btn_cropPhoto}
    Waiting to Load
Verify Success Message is displayed after Photo Uploaded
    Wait Until Element is Enabled               ${btn_closeSucMsg}          ${delay}
    Page Should Contain                         ${SucMsg_UploadLogo}
    Click Element                               ${btn_closeSucMsg}
    Sleep                                       2
    Page Should Contain Element                 ${btn_brandPhoto}

### Upload - Cover Brand ###
Upload Cover Brand
    wait until element is enabled               ${btn_brandCover}           ${delay}
    choose file                                 ${btn_brandCover}           ${image}
    Sleep                                       2
    wait until element is enabled               ${btn_cropCover}            ${delay}
    click element                               ${btn_cropCover}
    Waiting to Load
Verify Success Message is displayed after Cover Uploaded
    Wait Until Element is Enabled               ${btn_closeSucMsg}          ${delay}
    Page Should Contain                         ${SucMsg_UploadCover}
    Click Element                               ${btn_closeSucMsg}
    Sleep                                       2
    Page Should Contain Element                 ${btn_brandPhoto}

### Add Outlet ###
Click Add Outlet
    wait until element is enabled               ${btn_AddOutlet}            ${delay}
    click element                               ${btn_AddOutlet}
Input Location
    wait until element is enabled               ${fld_outletLoc}            ${delay}
    input text                                  ${fld_outletLoc}            ${outlet_loc}
    click element                               ${fld_outletLoc}
    wait until element is enabled               ${match_loc}                ${delay}
    click element                               ${match_loc}
Input First Name Outlet
    wait until element is enabled               ${fld_fnOutlet}             ${delay}
    input text                                  ${fld_fnOutlet}             ${fnOutlet}
Input Last Name Outlet
    ${RANDOM} =                                 Generate Random String      5   [NUMBERS]
    wait until element is enabled               ${fld_lnOutlet}             ${delay}
    input text                                  ${fld_lnOutlet}             ${RANDOM}
Select Country Code Outlet
    Wait Until Element is Enabled               ${drpdwn_countryCode}       ${delay}
    click element                               ${drpdwn_countryCode}
    wait until element is enabled               ${fld_searchCountryCd}      ${delay}
    input text                                  ${fld_searchCountryCd}      ${countryCode}
    wait until element is enabled               ${slct_countryCd}           ${delay}
    click element                               ${slct_countryCd}
Input Mobile Number Outlet
    ${RANDOM} =                                 Generate Random String      8   [NUMBERS]
    wait until element is enabled               ${fld_outletPhone}          ${delay}
    input text                                  ${fld_outletPhone}          ${mobileNoOutlet}${RANDOM}
Input Email Outlet
    ${RANDOM} =                                 Generate Random String      8
    wait until element is enabled               ${fld_outletEmail}          ${delay}
    input text                                  ${fld_outletEmail}          ${RANDOM}${emailOutlet}
Click Save Add Outlet
    wait until element is enabled               ${btn_saveAddOutlet}        ${delay}
    click element                               ${btn_saveAddOutlet}
    Waiting to Load
Verify Success Message is displayed after Outlet Added
    Wait Until Element is Enabled               ${btn_closeSucMsg}          ${delay}
    Page Should Contain                         ${sucMsg_added}
    Click Element                               ${btn_closeSucMsg}
    Sleep                                       2
    Page Should Contain Element                 ${btn_brandPhoto}

### Edit Outlet ###
Click Edit Outlet icon
    wait until element is enabled               ${icon_editOutlet}          ${delay}
    click element                               ${icon_editOutlet}
Edit Location
    wait until element is enabled               ${fld_editOutletLoc}        ${delay}
    input text                                  ${fld_editOutletLoc}        ${edited_loc}
    click element                               ${fld_editOutletLoc}
    wait until element is enabled               ${match_editedLoc}          ${delay}
    click element                               ${match_editedLoc}
Edit First Name Outlet
    wait until element is enabled               ${fld_editedFn}             ${delay}
    input text                                  ${fld_editedFn}             ${edited_fn}
Edit Last Name Outlet
    ${RANDOM} =                                 Generate Random String      5   [NUMBERS]
    wait until element is enabled               ${fld_editedLn}             ${delay}
    input text                                  ${fld_editedLn}             ${RANDOM}
Edit Country Code Outlet
    Wait Until Element is Enabled               ${drpdwn_EditedCntryCd}     ${delay}
    click element                               ${drpdwn_EditedCntryCd}
    wait until element is enabled               ${fld_EditedSrchCntryCd}    ${delay}
    input text                                  ${fld_EditedSrchCntryCd}    ${edited_countryCode}
    wait until element is enabled               ${slct_editedcountryCd}     ${delay}
    click element                               ${slct_editedcountryCd}
Edit Mobile Number Outlet
    ${RANDOM} =                                 Generate Random String      8   [NUMBERS]
    wait until element is enabled               ${fld_EditedPhone}          ${delay}
    input text                                  ${fld_EditedPhone}          ${edited_mobNo}${RANDOM}
Edit Email Outlet
    ${RANDOM} =                                 Generate Random String      8
    wait until element is enabled               ${fld_EditedEmail}          ${delay}
    input text                                  ${fld_EditedEmail}          ${RANDOM}${edited_email}
Click Save Edit Outlet
    wait until element is enabled               ${btn_saveEdit}             ${delay}
    click element                               ${btn_saveEdit}
    Waiting to Load
Verify Success Message is displayed after Outlet Edited
    Wait Until Element is Enabled               ${btn_closeSucMsg}          ${delay}
    Page Should Contain                         ${SucMsg_Edit}
    Click Element                               ${btn_closeSucMsg}
    Sleep                                       2
    Page Should Contain Element                 ${btn_brandPhoto}
