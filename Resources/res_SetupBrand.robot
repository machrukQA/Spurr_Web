*** Settings ***
Library             Selenium2Library

*** Variable ***
${url_brandSetup}               https://app-dev-v2.gospurr.com/dashboard-setup
${field_BrandName}              id:brand_name
${field_BusinessType}           id:select2-business-type-container
${slct_BusinessType}            xpath://*[@id='select2-business-type-results']//li[contains(text(),'Food & Beverage')]
${input_BudinessType}           xpath://input[@class='select2-search__field']
${btn_UploadLogo}               xpath://*[@name='logo']
${btn_UploadCover}              xpath://*[@name='background']
${chckBox_UseInf}               xpath://a[contains(text(),'Use the same')]
${field_OutletName}             id:outlet_name
${field_OutletContact}          id:outlet_contact
${field_ShortLoc}               id:short_location
${field_AdmEmail}               id:administrator_email
${btn_AddOutlet}                xpath://a[@class='btn btn-std'][contains(text(),'ADD OUTLET')]
${btn_CompSetup}                id:submit-complete-setup
${photoFile}                    /Users/machruk/Documents/Gift.png
${btn_CropLogo}                 id:submit_crop_logo
${btn_CropBg}                   id:submit_crop_bg
${shortLoc}                     Jakarta
${AdmEmail}                     machruk.m@gmail.com

${specialBrand}                 Special
${brandName}                    Brand
${businessType}                 Food & Beverage
${SuccessSetUp}                 Congratulations! Your Business Setup Is Complete!




*** Keywords ***
Select Business Type
    Wait Until Element is Enabled               ${field_BrandName}              ${delay}
    Wait Until Element is Visible               ${field_BusinessType}           ${delay}
    Click Element                               ${field_BusinessType}
    Input Text                                  ${input_BudinessType}           ${businessType}
    Wait Until Element is Enabled               ${slct_BusinessType}            ${delay}
    Click Element                               ${slct_BusinessType}
Input Brand Name
    ${RANDOM} =                                 Generate Random String          4   [NUMBERS]
    Input Text                                  ${field_BrandName}              Auto${brandName} ${RANDOM}
Select Logo
    Wait Until Element is Enabled               ${btn_UploadLogo}               ${delay}
    Choose File                                 ${btn_UploadLogo}               ${photoFile}
    sleep                                       3
    Wait until element is enabled               ${btn_CropLogo}                 ${delay}
    Click Element                               ${btn_CropLogo}
Select Background
    Wait Until Element is Enabled               ${btn_UploadCover}              ${delay}
    Choose File                                 ${btn_UploadCover}              ${photoFile}
    sleep                                       3
    Wait Until Element is Visible               ${btn_CropBg}                   ${delay}
    Click Element                               ${btn_CropBg}
Checkbox Use Infromation
    Wait Until Element is Enabled               ${chckBox_UseInf}               ${delay}
    Click Element                               ${chckBox_UseInf}
Input Short Location
    Sleep                                       3
    Wait Until Element is Enabled               ${field_ShortLoc}               ${delay}
    Input Text                                  ${field_ShortLoc}               ${shortLoc}
Add Administrator Email
    Wait Until Element is Enabled               ${field_AdmEmail}               ${delay}
    input text                                  ${field_AdmEmail}               ${AdmEmail}
Click Complete Setup
    Wait Until Element is Enabled               ${btn_CompSetup}                ${delay}
    Click Element                               ${btn_CompSetup}
Verify SetUp Brand is successfully
    sleep                                       3
    wait until page contains                    ${SuccessSetUp}                 ${delay}
    page should contain                         ${SuccessSetUp}
