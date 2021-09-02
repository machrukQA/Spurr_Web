*** Variables ***
${menu_customer}                    xpath://body[1]/ul[1]/li[1]/ul[1]/li[4]/a[1]
${btn_actvPrior}                    xpath://a[contains(text(),'ACTIVATE PRIORITY CUSTOMERS')]
${drpdwn_outlet}                    xpath://body[1]/ul[1]/li[2]/section[1]/div[1]/ul[1]/li[1]/span[1]/span[1]/span[1]/span[1]

${tab_all}                          xpath://a[contains(text(),'ALL')]
${tab_newCust}                      xpath://a[contains(text(),'NEW CUSTOMERS')]
${tab_repeatCust}                   xpath://a[contains(text(),'REPEAT CUSTOMERS')]
${tab_priorCust}                    xpath://body/ul[1]/li[2]/section[2]/div[1]/ul[1]/li[4]/a[1]
${tab_atRiskCust}                   xpath://a[contains(text(),'AT-RISK CUSTOMERS')]




###Activate Priority Customer###
#Eligibility Details
${drpdwn_priorType}                 xpath://body[1]/ul[1]/li[2]/form[1]/section[1]/div[2]/ul[1]/li[2]/ul[1]/li[1]/span[1]/span[1]/span[1]/span[1]
${slct_stampType}                   xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[contains(text(),'Stamp')]
${slct_spentType}                   xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[contains(text(),'Spent')]
${fld_srchType}                     xpath://body[1]/span[1]/span[1]/span[1]/input[1]
${fld_target}                       id:priorityTargetValue
${target}                           50

#Earning Period & Validity
${drpdwn_earningPeriod}             xpath://body[1]/ul[1]/li[2]/form[1]/section[1]/div[3]/ul[1]/li[1]/span[2]/span[1]/span[1]/span[1]/span[1]
${drpdwn_editEarning}               xpath://body[1]/ul[1]/li[2]/form[1]/section[1]/div[3]/ul[1]/li[1]/span[2]/span[1]/span[1]/span[1]
${slctEarn_6Month}                  xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[1]
${slctEarn_12Month}                 xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[2]
${drpdwn_validity}                  xpath://body[1]/ul[1]/li[2]/form[1]/section[1]/div[3]/ul[1]/li[2]/span[2]/span[1]/span[1]/span[1]/span[1]
${drpdwn_editValidity}              xpath://body[1]/ul[1]/li[2]/form[1]/section[1]/div[3]/ul[1]/li[2]/span[2]/span[1]/span[1]/span[1]
${slctVal_6Month}                   xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[1]
${slctVal_12Month}                  xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[2]

#Term&Condition
${fld_tnc}                          xpath://body[1]/ul[1]/li[2]/form[1]/section[1]/div[4]/ul[2]/li[1]/textarea[1]
${tnc}                              Auto Term&Condition Text
${btn_addTerm}                      xpath://body[1]/ul[1]/li[2]/form[1]/section[1]/div[4]/ul[2]/li[2]/button[1]

${btn_publish}                      xpath://body[1]/ul[1]/li[2]/form[1]/section[2]/ul[1]/li[2]/a[1]
${btn_cancel}                       xpath://body[1]/ul[1]/li[2]/form[1]/section[2]/ul[1]/li[1]/a[1]

${sucMsg}                           You have successfully determine the eligibility of your Priority Customer.
${btn_closeMsg}                     xpath://body[1]/div[1]/div[2]/ul[1]/li[1]/button[1]


###Edit Segment
${btn_editSegment}                  xpath://a[contains(text(),'EDIT SEGMENT')]
${targetEdited}                     75
${tncEdited}                        AutoEdit Term&Condition Text

###Edit Period
${btn_editPeriod}                   xpath://a[contains(text(),'EDIT PERIOD')]
${fld_days}                         xpath://body/ul[1]/li[2]/section[2]/ul[1]/li[2]/div[1]/ul[1]/li[1]/input[1]
${days}                             13
${btn_submitEdit}                   xpath://button[contains(text(),'submit')]
${btn_cancelSubmit}                 xpath://body/ul[1]/li[2]/section[2]/ul[1]/li[2]/div[1]/div[1]/ul[1]/li[1]/a[1]
${sucMsg_editPer}                   Data is successfully saved
${btn_clsEditPer}                   xpath://body[1]/div[2]/div[3]/ul[1]/li[1]/button[1]




*** Keywords ***
Go to Customer menu
    Open GoSpurr.com
    wait until element is enabled               ${menu_customer}                ${delay}
    click element                               ${menu_customer}
    wait until page contains element            ${btn_editPeriod}               ${delay}
    Waiting to Load

###Activate Priority Customer###
Click Activate Priority Customers
    wait until element is enabled               ${btn_actvPrior}                ${delay}
    click element                               ${btn_actvPrior}
Select Stamp Type
    wait until element is enabled               ${drpdwn_priorType}             ${delay}
    click element                               ${drpdwn_priorType}
    wait until element is enabled               ${slct_stampType}               ${delay}
    click element                               ${slct_stampType}
Select Spent Type
    wait until element is enabled               ${drpdwn_priorType}             ${delay}
    click element                               ${drpdwn_priorType}
    wait until element is enabled               ${slct_spentType}               ${delay}
    click element                               ${slct_spentType}
Input Target Stamp/Spend
    wait until element is enabled               ${fld_target}                   ${delay}
    input text                                  ${fld_target}                   ${target}
Select 6 Months Earning
    wait until element is enabled               ${drpdwn_earningPeriod}         ${delay}
    click element                               ${drpdwn_earningPeriod}
    wait until element is enabled               ${slctEarn_6Month}              ${delay}
    click element                               ${slctEarn_6Month}
Select 12 Months Earning
    wait until element is enabled               ${drpdwn_earningPeriod}         ${delay}
    click element                               ${drpdwn_earningPeriod}
    wait until element is enabled               ${slctEarn_12Month}             ${delay}
    click element                               ${slctEarn_12Month}
Select 6 Months Validity
    wait until element is enabled               ${drpdwn_validity}              ${delay}
    click element                               ${drpdwn_validity}
    wait until element is enabled               ${slctEarn_6Month}               ${delay}
    click element                               ${slctEarn_6Month}
Select 12 Months Validity
    wait until element is enabled               ${drpdwn_validity}              ${delay}
    click element                               ${drpdwn_validity}
    wait until element is enabled               ${slctVal_12Month}              ${delay}
    click element                               ${slctVal_12Month}
Add Term & Conditions
    wait until element is enabled               ${fld_tnc}                      ${delay}
    input text                                  ${fld_tnc}                      ${tnc}
    click element                               ${btn_addTerm}
Click Publish Priority
    wait until element is enabled               ${btn_publish}                  ${delay}
    click element                               ${btn_publish}
Verify Success Message is displayed
    Sleep                                       3
    Wait until page contains                    ${sucMsg}                       ${delay}
    Page should contain                         ${sucMsg}
    Click element                               ${btn_closeMsg}
    Sleep                                       5
    Page should contain element                ${btn_editSegment}

###Edit Segment
Click Edit Segment
    wait until element is enabled               ${btn_editSegment}                ${delay}
    click element                               ${btn_editSegment}
Edit to Stamp Type
    wait until element is enabled               ${drpdwn_priorType}             ${delay}
    click element                               ${drpdwn_priorType}
    wait until element is enabled               ${slct_stampType}               ${delay}
    click element                               ${slct_stampType}
Edit to Spent Type
    wait until element is enabled               ${drpdwn_priorType}             ${delay}
    click element                               ${drpdwn_priorType}
    wait until element is enabled               ${slct_spentType}               ${delay}
    click element                               ${slct_spentType}
Edit Target Stamp/Spend
    wait until element is enabled               ${fld_target}                   ${delay}
    input text                                  ${fld_target}                   ${targetEdited}
Edit to 6 Months Earning
    wait until element is enabled               ${drpdwn_editEarning}           ${delay}
    click element                               ${drpdwn_editEarning}
    wait until element is enabled               ${slctEarn_6Month}              ${delay}
    click element                               ${slctEarn_6Month}
Edit to 12 Months Earning
    wait until element is enabled               ${drpdwn_editEarning}           ${delay}
    click element                               ${drpdwn_editEarning}
    wait until element is enabled               ${slctEarn_12Month}             ${delay}
    click element                               ${slctEarn_12Month}
Edit to 6 Months Validity
    wait until element is enabled               ${drpdwn_editValidity}          ${delay}
    click element                               ${drpdwn_editValidity}
    wait until element is enabled               ${slctEarn_6Month}              ${delay}
    click element                               ${slctEarn_6Month}
Edit to 12 Months Validity
    wait until element is enabled               ${drpdwn_editValidity}          ${delay}
    click element                               ${drpdwn_editValidity}
    wait until element is enabled               ${slctVal_12Month}              ${delay}
    click element                               ${slctVal_12Month}
Edit Term & Conditions
    wait until element is enabled               ${fld_tnc}                      ${delay}
    input text                                  ${fld_tnc}                      ${tncEdited}
    click element                               ${btn_addTerm}


#Edit Period
Click Edit Period button
    wait until element is enabled               ${btn_editPeriod}               ${delay}
    click element                               ${btn_editPeriod}
Edit Period
    wait until element is enabled               ${fld_days}                     ${delay}
    input text                                  ${fld_days}                     ${days}
Click Submit Edit Period
    wait until element is enabled               ${btn_submitEdit}               ${delay}
    click element                               ${btn_submitEdit}
    sleep                                       3
Verify Success Message is displayed after period edited
    Wait until page contains                    ${sucMsg_editPer}               ${delay}
    Page should contain                         ${sucMsg_editPer}
    Click element                               ${btn_clsEditPer}
    Sleep                                       5
    Page should contain element                 ${btn_editPeriod}





