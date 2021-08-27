*** Variable ***
${url_CreateLoyalty}                https://app-dev-v2.gospurr.com/loyalty-type
${btn_CreateLoyalty}                xpath://a[contains(text(),'CREATE LOYALTY PROGRAM')]
${rdioBtn_SpendBased}               xpath://span[contains(text(),'SPEND-BASED')]
${rdioBtn_SpendMeter}               xpath://span[contains(text(),'SPEND METER')]
${rdioBtn_ItemBased}                xpath://span[contains(text(),'ITEM-BASED')]
${rdioBtn_VisitBased}               xpath://span[contains(text(),'VISIT-BASED')]

#Spend Based
${btn_Req_SpendBased}               xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[3]/div[1]/ul[1]/li[1]/a[1]/span[1]/strong[1]
${btn_Req_SpendBasedOff}            xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[3]/div[1]/ul[1]/li[1]/a[1]
${btn_Req_SpendBasedOn}             xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[1]/a[1]/span[1]/em[1]

${field_Ttl_Stamp}                  xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[2]/li[1]/input[1]
${input_Ttl_Stamp}                  5
${field_SpndBsd_idr}                xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[2]/li[2]/input[1]
${idr}                              10000
${lylty_StrtDate}                   xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[2]/li[3]/input[1]
${lylty_EndDate}                    xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[2]/li[4]/input[1]
${btn_next}                         xpath://body/ul[1]/li[2]/section[4]/ul[1]/li[2]/a[1]


#Free Gift Type
${slct_CashVoucher}                 xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[2]
${slct_FreeGift}                    xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[3]

${step_Vrfy_Step2}                  xpath://li[@class='active']//span[contains(text(),'2')]
${drpdwn_RewardType}                xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[1]/ul[1]/li[1]/span[1]/span[1]/span[1]/span[1]
${drpdwn_RewardType2}               xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[2]/ul[1]/li[1]/span[1]/span[1]/span[1]/span[1]
${field_RewardValue}                id:reward_value
${field_RewardValue2}               xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[2]/ul[1]/li[3]/input[1]

${field_RewardName}                 id:reward_name
${field_RewardName2}                xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[2]/ul[1]/li[2]/input[1]
${btn_UploadImage}                  xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[1]/ul[1]/li[5]/div[1]/input[1]
${btn_UploadImage2}                 xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[2]/ul[1]/li[5]/div[1]/input[1]

${btn_AddReward}                    xpath://a[@class='btn btn-green with-prior'][contains(text(),'ADD REWARD')]
${btn_Delete1}                      xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[2]/div[1]/a[1]
${btn_Delete2}                      xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[3]/div[1]/a[1]
${btn_Crop}                         id:submit_crop
${btn_next_reward}                  xpath://body[1]/ul[1]/li[2]/section[4]/ul[1]/li[2]/a[1]

${rewardValue}                      300000
${rewardName}                       AutoSpendBased_
${imageFile}                        /Users/machruk/Documents/Gift.png

#Cash Voucher Type
${field_RewardStamp}                id:reward_stamps
${field_RewardStamp2}
${rewardStamp}                      3


#Term&Condition
${chckBox_TermCond1}                xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[2]/ul[1]/li[1]/a[@class='is-on']
${chckBox_TermCond2}                xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[2]/ul[1]/li[2]/a[1]/span[1]
${field_AddTerm}                    xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[2]/ul[2]/li[1]/textarea[1]
${btn_Publish}                      xpath://body/ul[1]/li[2]/section[4]/ul[1]/li[2]/a[1]
${ver_Suc_Publ}                     xpath://span[contains(text(),'Congratulations!')]
${btn_Close_Publ}                   xpath://button[contains(text(),'Close')]






*** Keywords ***
Go to Loyalty Page
    Go to                               ${url_CreateLoyalty}

Click Create Loyalty button
    Click Element                       ${btn_CreateLoyalty}
    Wait Until Element is Enabled       ${rdioBtn_SpendBased}                   ${delay}
Select Spend Based
    Wait Until Element is Enabled       ${rdioBtn_SpendBased}                 ${delay}
    Click Element                       ${rdioBtn_SpendBased}
    Wait Until Element is Enabled       ${btn_Req_SpendBasedOn}                 ${delay}
    Page Should Contain Element         ${btn_Req_SpendBasedOn}
Input Total Number Stamp
    Wait Until Element is Enabled       ${field_Ttl_Stamp}                      ${delay}
    Input Text                          ${field_Ttl_Stamp}                      ${input_Ttl_Stamp}
Input Minimum IDR
    Wait Until Element is Enabled       ${field_SpndBsd_idr}                    ${delay}
    Input Text                          ${field_SpndBsd_idr}                    ${idr}
Select Loyalty Period
    ${slct_StrtDate}=                   Get Current Date
    ${startDate}=                       Convert Date                            ${slct_StrtDate}                result_format=%d %B %Y
    Press Keys                          ${lylty_StrtDate}                       ${startDate}
    Sleep                               3
    ${slct_EndDate}=                    Add Time To Date                        ${slct_StrtDate}                7 Days
    ${EndDate}=                         Convert Date                            ${slct_EndDate}                 result_format=%d %B %Y
    Press Keys                          ${lylty_EndDate}                        ${EndDate}
Click Next Button
    Wait Until Element is Enabled       ${btn_next}                             ${delay}
    Click Element                       ${btn_next}
Verify Reward Details are Displayed Properly
    Sleep                               3
    Set Focus to Element                ${step_Vrfy_Step2}
    Wait Until Element is Enabled       ${step_Vrfy_Step2}                      ${delay}
    Page Should Contain Element         ${step_Vrfy_Step2}
    Page Should Contain Element         ${drpdwn_RewardType}
    Page Should Contain Element         ${field_RewardValue}
    Page Should Contain Element         ${field_RewardName}
    Page Should Contain Element         ${btn_UploadImage}
    Page Should Contain Element         ${btn_AddReward}

#Step 2 => Select Free Gift
Select Free Gift Type
    Sleep                               5
    Wait Until Element is Enabled       ${drpdwn_RewardType}                    ${delay}
    Click Element                       ${drpdwn_RewardType}
    Wait Until Element is Enabled       ${slct_FreeGift}                        ${delay}
    Click Element                       ${slct_FreeGift}
Input Reward Value
    Wait Until Element is Enabled       ${field_RewardValue}                    ${delay}
    Input Text                          ${field_RewardValue}                    ${rewardValue}
Input Reward Name
    ${random}=                          Generate Random String                  3       [NUMBERS]
    Wait Until Element is Enabled       ${field_RewardName}                     ${delay}
    Input Text                          ${field_RewardName}                     FreeGift_Espresso${random}
Upload Image
    wait until element is enabled       ${btn_UploadImage}                      ${delay}
    choose file                         ${btn_UploadImage}                      ${imageFile}
    Waiting to Load
    Wait Until Element is Enabled       ${btn_Crop}                             ${delay}
    Click Element                       ${btn_Crop}
Click Next button (reward)
    Wait Until Element is Enabled       ${btn_next_reward}                      ${delay}
    Click Element                       ${btn_next_reward}



#Step 2 => Select Cash Voucher
Select Cash Voucher Period
    Sleep                               3
    ${slct_CurDate}=                    Get Current Date
    ${slct_StrtDate}                    Add Time To Date                        ${slct_CurDate}                 10 Days
    ${startDate}=                       Convert Date                            ${slct_StrtDate}                result_format=%d %B %Y
    Press Keys                          ${lylty_StrtDate}                       ${startDate}
    Sleep                               3
    ${slct_EndDate}=                    Add Time To Date                        ${slct_StrtDate}                7 Days
    ${EndDate}=                         Convert Date                            ${slct_EndDate}                 result_format=%d %B %Y
    Press Keys                          ${lylty_EndDate}                        ${EndDate}
Select Cash Voucher Type
    Wait Until Element is Enabled       ${drpdwn_RewardType}                    ${delay}
    Click Element                       ${drpdwn_RewardType}
    Wait Until Element is Enabled       ${slct_CashVoucher}                     ${delay}
    Click Element                       ${slct_CashVoucher}
Input Reward Stamp
    Sleep                               3
    Wait Until Element is Visible       ${field_RewardStamp}                    ${delay}
    Input Text                          ${field_RewardStamp}                    ${rewardStamp}

#Step 3
Verify Term & Condition Checkbox are selected
    Wait Until Element is Enabled       ${chckBox_TermCond1}                    ${delay}
    Page Should Contain Element         ${chckBox_TermCond1}
    Page Should Contain Element         ${chckBox_TermCond2}
Add Term of Service
    Wait Until Element is Enabled       ${field_AddTerm}                        ${delay}
    Input Text                          ${field_AddTerm}                        Add Term Testing
Click Publish button
    Wait Until Element is Enabled       ${btn_Publish}                          ${delay}
    Click Element                       ${btn_Publish}
Verify Publish Reward is Successfully
    Wait Until Element is Visible       ${ver_Suc_Publ}                         ${delay}
    Page Should Contain Element         ${ver_Suc_Publ}
    Sleep                               15
    Wait Until Element is Visible       ${btn_Close_Publ}
    Click Element                       ${btn_Close_Publ}



#Add Free Gift Reward
Click Add Reward button
    Wait Until Element is Enabled       ${btn_AddReward}                        ${delay}
    Click Element                       ${btn_AddReward}
Select Free Gift Type (2)
    Sleep                               5
    Wait Until Element is Enabled       ${drpdwn_RewardType2}                    ${delay}
    Click Element                       ${drpdwn_RewardType2}
    Wait Until Element is Enabled       ${slct_FreeGift}                        ${delay}
    Click Element                       ${slct_FreeGift}
Input Reward Value (2)
    Wait Until Element is Enabled       ${field_RewardValue2}                    ${delay}
    Input Text                          ${field_RewardValue2}                    ${rewardValue}
Input Reward Name (2)
    ${random}=                          Generate Random String                  3       [NUMBERS]
    Wait Until Element is Enabled       ${field_RewardName2}                     ${delay}
    Input Text                          ${field_RewardName2}                     FreeGift_Espresso${random}
Upload Image (2)
    Wait Until Element is Enabled       ${btn_UploadImage2}                      ${delay}
    Choose File                         ${btn_UploadImage2}                      ${imageFile}
    sleep                               3
    #Wait Until Element is Enabled       ${btn_Crop}                             ${delay}
    #Click Element                       ${btn_Crop}

#Add Cash Voucher Reward
Select Cash Voucher Type (2)
    Wait Until Element is Enabled       ${drpdwn_RewardType2}                   ${delay}
    Click Element                       ${drpdwn_RewardType2}
    Wait Until Element is Enabled       ${slct_CashVoucher}                     ${delay}
    Click Element                       ${slct_CashVoucher}












