*** Variables ***
${btn_upgradePro}               id:action-Premium
${rdbtn_monthly}                xpath://input[@type='radio'][@value='monthly']
${rdbtn_annual}                 xpath://body[1]/ul[1]/li[2]/section[2]/ul[1]/li[1]/div[1]/div[1]/ul[1]/li[1]/label[1]
${iframe}                       xpath://*[@id='card-element']/div[1]/iframe
${fld_cardNo}                   xpath:/html/body/div/form/div/div[2]/span[1]/span[2]/div/div[2]/span/input
${fld_MMYY}                     xpath://input[@name='exp-date']
${fld_CVC}                      xpath://input[@name='cvc']

${cardNo}                       42424242424242420821000
${MMYY}                         0821
${CVC}                          000

### Billing Information ###
${fld_fn}                       id:firstname
${fld_ln}                       id:lastname
${fld_address1}                 id:address
${fld_address2}                 id:address2
${fld_postCode}                 id:zip
${fld_city}                     id:city
${fld_state}                    id:state
${fld_country}                  id:country
${btn_updatePlan}               id:btn-pay

${fn}                           Machruk
${ln}                           Marjuki
${address1}                     Cluster Sumberjaya Village 2
${address2}                     No.3A
${postCode}                     17510
${city}                         Bekasi
${state}                        Jawa Barat
${country}                      Indonesia
${scsMsg_upgradeVerified}       Your payment verified and succeeded.
${btn_closeSucMsg}              xpath://body[1]/div[1]/div[2]/ul[1]/li[1]/button[1]



*** Keywords ***
Click Upgrade
    wait until element is enabled               ${btn_upgradePro}           ${delay}
    click element                               ${btn_upgradePro}
    Sleep                                       3
Select Annual Charges
    wait until element is enabled               ${rdbtn_annual}             ${delay}
    click element                               ${rdbtn_annual}
Select Monthly Charges
    wait until element is enabled               ${rdbtn_monthly}            ${delay}
    click element                               ${rdbtn_monthly}
Input Card Number
    wait until element is enabled               ${iframe}                   ${delay}
    select frame                                ${iframe}
    input text                                  ${fld_cardNo}               ${cardNo}
    unselect frame
Input Firstname Billing
    wait until element is enabled               ${fld_fn}                   ${delay}
    input text                                  ${fld_fn}                   ${fn}
Input Lastname Billing
    wait until element is enabled               ${fld_ln}                   ${delay}
    input text                                  ${fld_ln}                   ${ln}
Input Address Line 1
    wait until element is enabled               ${fld_address1}             ${delay}
    input text                                  ${fld_address1}             ${address1}
Input Address Line 2
    wait until element is enabled               ${fld_address2}             ${delay}
    input text                                  ${fld_address2}             ${address2}
Input Postcode
    wait until element is enabled               ${fld_postCode}             ${delay}
    input text                                  ${fld_postCode}             ${postCode}
Input City
    wait until element is enabled               ${fld_city}                 ${delay}
    input text                                  ${fld_city}                 ${city}
Input State/Territory
    wait until element is enabled               ${fld_state}                ${delay}
    input text                                  ${fld_state}                ${state}
Input Country
    wait until element is enabled               ${fld_country}              ${delay}
    input text                                  ${fld_country}              ${country}
Click Update Plan
    wait until element is enabled               ${btn_updatePlan}           ${delay}
    click element                               ${btn_updatePlan}
    Waiting to Load
Success Message Upgrade pro is displayed
    Wait Until Element is Enabled               ${btn_closeSucMsg}          ${delay}
    Page Should Contain                         ${scsMsg_upgradeVerified}
    Click Element                               ${btn_closeSucMsg}
    Sleep                                       2


