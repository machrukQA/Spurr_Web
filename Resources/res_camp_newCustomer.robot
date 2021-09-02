*** Variables ***
###Create Campaign###
${menu_campaign}                xpath://body[1]/ul[1]/li[1]/ul[1]/li[3]/a[1]
${btn_crtCampaign}              xpath://body[1]/ul[1]/li[2]/section[1]/div[1]/ul[1]/li[1]/a[1]
${rdBtn_NewCstmr}               id:NEW_CUSTOMER
${rdBtn_secondVisit}            id:SECOND_VISIT
${rdBtn_birthdayMonth}          id:BIRTHDAY_MONTH
${rdBtn_anniversary}            id:ANNIVERSARY
${rdBtn_lostCstmr}              id:LOST_CUSTOMER

${btn_next}                     xpath://body[1]/ul[1]/li[2]/section[1]/div[1]/ul[1]/li[2]/a[1]
${fld_offerName}                id:promotionName
${fld_minSpend}                 id:promotionMinimumSpending
${fld_offerValue}               id:promotionValue
${fld_offerStrdate}             name:promotionStart
${fld_offerEnddate}             name:promotionExpired
${btn_newC_uploadImage}         xpath://body/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[1]/form[1]/ul[1]/li[11]/div[1]/input[1]
${btn_Crop}                     xpath://body[1]/div[1]/div[2]/ul[1]/li[2]/button[1]
${btn_cancelCrop}               xpath://body[1]/div[1]/div[2]/ul[1]/li[1]/button[1]
${CampaignImage}                /Users/machruk/Downloads/Gift.png

${rdBtn_tnc1}                   xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[2]/ul[1]/li[1]/a[1]
${rdBtn_tnc2}                   xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[2]/ul[1]/li[2]/a[1]
${fld_addTerm}                  xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[2]/ul[2]/li[1]/textarea[1]
${addTermText}                  This is an automation term
${btn_addTerm}                  xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[2]/ul[2]/li[2]/button[1]
${btn_publish}                  xpath://body[1]/ul[1]/li[2]/section[4]/ul[1]/li[2]/a[1]
${btn_back}                     xpath://body[1]/ul[1]/li[2]/section[4]/ul[1]/li[1]/a[1]

###New Customer Offer###
${drpdwn_offerType}             xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[1]/form[1]/ul[1]/li[2]/span[1]/span[1]/span[1]/span[1]
${search_offerType}             xpath://body[1]/span[1]/span[1]/span[1]/input[1]
${opt_freeGift}                 xpath://body[1]/span[1]/span[1]/span[2]/ul[@id='select2-promotionTypeId-results']/li[2]
${opt_buyXgetY}                 xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[3]
${opt_getVoucher}               xpath://body[1]/span[1]/span[1]/span[2]/ul[1]/li[4]

###Free Gift###
${newCustomerName}              NewCustomerPromo_Auto
${secVisitName}                 SecondVisitPromo_Auto
${brthdyMonthName}              BirthdayMonthPromo_Auto
${annivName}                    AnniversaryPromo_Auto
${lostCustName}                 LostCustomerPromo_Auto

${offerValue}                   2000000
${minSpend}                     5000

###Buy X Get Y###
${fld_prodX}                    id:promotionBuyName
${fld_prodY}                    id:promotionGetName
${fld_prodXValue}               id:promotionBuy
${fld_prodYValue}               id:promotionGet

${prodX_name}                   prodX_
${prodY_name}                   prodY_
${prodX_value}                  20000000
${prodY_value}                  25000

${prodX_Edited}                 editedProdX_
${prodY_Edited}                 editedProdY_
${prodX_Editedvalue}            20001000
${prodY_Editedvalue}            25500

${sucMsg}                       Your Campaign has been published and will be visible by your customers at the appointed time.
${sucEditMsg}                   Your Campaign has been updated and will be visible by your customers at the appointed time.
${btn_closeMsg}                 xpath://button[contains(text(),'Close')]


###Edit Campaign###
${btn_editCampaign}             xpath://a[contains(text(),'EDIT CAMPAIGN')]
${fldEdit_addTerm}              xpath://body[1]/ul[1]/li[2]/section[2]/ul[1]/li[1]/div[2]/ul[2]/li[1]/textarea[1]
${EditTermText}                 Term text edited
${btn_EditTerm}                 xpath://button[contains(text(),'ADD TERM')]
${drpwnEdit_offerType}          xpath://body[1]/ul[1]/li[2]/section[2]/ul[1]/li[1]/ul[1]/li[1]/div[1]/ul[1]/li[1]/form[1]/ul[1]/li[2]/span[1]/span[1]/span[1]/span[1]
${btn_saveEdit}                 xpath://body[1]/ul[1]/li[2]/section[3]/ul[1]/li[2]/a[1]

${newCustomerName_edit}         NewCustomerPromo_Edited
${secVisitName_edit}            SecondVisitPromo_Edited
${brthdyMonthName_edit}         BirthdayMonthPromo_Edited
${annivName_edit}               AnniversaryPromo_Edited
${lostCustName_edit}            LostCustomerPromo_Edited

${offerValue_Edit}              1750000
${minSpendEdit}                 10000
${btn_closeEdit}                xpath://body/div[3]/div[2]/ul[1]/li[1]/button[1]






*** Keywords ***
Go to Campaign menu
    Open GoSpurr.com
    wait until element is enabled               ${menu_campaign}                ${delay}
    click element                               ${menu_campaign}
    wait until page contains element            ${btn_crtCampaign}              ${delay}
    Waiting to Load

###Create Campaign###
Click Create Campaign
    wait until element is enabled               ${btn_crtCampaign}              ${delay}
    click element                               ${btn_crtCampaign}
    wait until page contains element            ${rdBtn_NewCstmr}               ${delay}
    Sleep                                       3
###New Customent Offer details###
###=>Step1 => Free Gift
Select New Customer Offer
    wait until element is enabled               ${rdBtn_NewCstmr}               ${delay}
    click element                               ${rdBtn_NewCstmr}
Click Next button
    Scroll element into view                    ${btn_next}
    wait until element is enabled               ${btn_next}                     ${delay}
    click element                               ${btn_next}
###=>Step2 => Free Gift
Input New Customer Name
    Sleep                                       5
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${newCustomerName}
Input Second Visit Name
    Sleep                                       5
    #${RANDOM}=                                  Generate Random String          6   [NUMBERS]
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${secVisitName}
Input Birthday Month Name
    Sleep                                       5
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${brthdyMonthName}
Input Anniversary Name
    Sleep                                       5
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${annivName}
Input Lost Customer Name
    Sleep                                       5
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${lostCustName}
Select Free Gift Type
    Wait Until Element is Enabled               ${drpdwn_offerType}             ${delay}
    Click Element                               ${drpdwn_offerType}
    Wait Until Element is Enabled               ${opt_freeGift}                 ${delay}
    Click Element                               ${opt_freeGift}
Input Offer Value
    wait until element is enabled               ${fld_offerValue}               ${delay}
    input text                                  ${fld_offerValue}               ${offerValue}
Input Minimum Spending
    wait until element is enabled               ${fld_minSpend}                 ${delay}
    input text                                  ${fld_minSpend}                 ${minSpend}
Select Offer Period
    ${slct_StrtDate}=                           Get Current Date
    ${startDate}=                               Convert Date                    ${slct_StrtDate}                result_format=%d
    Sleep                                       2
    click element                               ${fld_offerStrdate}
    click element                               //*[@class='ui-datepicker-calendar']//*[contains(text(),'${startDate}')]
    Sleep                                       2
    ${slct_EndDate}=                            Add Time To Date                ${slct_StrtDate}                7 Days
    ${EndDate}=                                 Convert Date                    ${slct_EndDate}                 result_format=%d
    ${int}                                      Convert To Integer              ${EndDate}
    click element                               ${fld_offerEnddate}
    click element                               //*[@class='ui-datepicker-calendar']//*[contains(text(),'${int}')]
Click Upload Image
    Wait Until Element is Enabled               ${btn_newC_uploadImage}         ${delay}
    Choose File                                 ${btn_newC_uploadImage}         ${CampaignImage}
    Sleep                                       3
    Wait Until Element is Enabled               ${btn_Crop}                     ${delay}
    Click Button                                ${btn_Crop}

Click Next to Step 3
    Sleep                                       2
    Scroll element into view                    ${btn_next}
    wait until element is enabled               ${btn_next}                     ${delay}
    click element                               ${btn_next}

###=>Step3 => Free Gift
Click T&C 1 Radio Button
    wait until element is enabled               ${rdBtn_tnc1}                   ${delay}
    click element                               ${rdBtn_tnc1}
Click T&C 2 Radio Button
    wait until element is enabled               ${rdBtn_tnc2}                   ${delay}
    click element                               ${rdBtn_tnc2}
Add T&C
    wait until element is enabled               ${fld_addTerm}                  ${delay}
    input text                                  ${fld_addTerm}                  ${addTermText}
Click Publish
    wait until element is enabled               ${btn_publish}                  ${delay}
    click element                               ${btn_publish}

###Buy X get Y
Select Buy X Get Y Type
    Wait Until Element is Enabled               ${drpdwn_offerType}             ${delay}
    Click Element                               ${drpdwn_offerType}
    Wait Until Element is Enabled               ${opt_buyXgetY}                 ${delay}
    Click Element                               ${opt_buyXgetY}
Input X Product
    ${RANDOM}=                                  Generate Random String          3   [NUMBERS]
    Wait Until Element is Enabled               ${fld_prodX}                    ${delay}
    Input Text                                  ${fld_prodX}                    ${prodX_name}${RANDOM}
Input Y Product
    ${RANDOM}=                                  Generate Random String          3   [NUMBERS]
    Wait Until Element is Enabled               ${fld_prodY}                    ${delay}
    Input Text                                  ${fld_prodY}                    ${prodY_name}${RANDOM}
Input X Product Value
    Wait Until Element is Enabled               ${fld_prodXValue}               ${delay}
    Input Text                                  ${fld_prodXValue}               ${prodX_value}
Input Y Product Value
    Wait Until Element is Enabled               ${fld_prodYValue}               ${delay}
    Input Text                                  ${fld_prodYValue}               ${prodY_value}

#Edit buyXgetY
Edit X Product
    ${RANDOM}=                                  Generate Random String          3   [NUMBERS]
    Wait Until Element is Enabled               ${fld_prodX}                    ${delay}
    Input Text                                  ${fld_prodX}                    ${prodX_Edited}${RANDOM}
Edit Y Product
    ${RANDOM}=                                  Generate Random String          3   [NUMBERS]
    Wait Until Element is Enabled               ${fld_prodY}                    ${delay}
    Input Text                                  ${fld_prodY}                    ${prodY_Edited}${RANDOM}
Edit X Product Value
    Wait Until Element is Enabled               ${fld_prodXValue}               ${delay}
    Input Text                                  ${fld_prodXValue}               ${prodX_Editedvalue}
Edit Y Product Value
    Wait Until Element is Enabled               ${fld_prodYValue}               ${delay}
    Input Text                                  ${fld_prodYValue}               ${prodY_Editedvalue}



#Cash Voucher
Select Cash Voucher Type
    Wait Until Element is Enabled               ${drpdwn_offerType}             ${delay}
    Click Element                               ${drpdwn_offerType}
    Wait Until Element is Enabled               ${opt_getVoucher}               ${delay}
    Click Element                               ${opt_getVoucher}





###Second Visit Offer details###
Select Second Visit Offer
    wait until element is enabled               ${rdBtn_secondVisit}            ${delay}
    click element                               ${rdBtn_secondVisit}

###Birthday Month Offer details###
Select Birthday Month Offer
    wait until element is enabled               ${rdBtn_birthdayMonth}          ${delay}
    click element                               ${rdBtn_birthdayMonth}

###Anniversary Offer details###
Select Anniversary Offer
    wait until element is enabled               ${rdBtn_anniversary}            ${delay}
    click element                               ${rdBtn_anniversary}

###Second Visit Offer details###
Select Lost Customer Offer
    wait until element is enabled               ${rdBtn_lostCstmr}              ${delay}
    click element                               ${rdBtn_lostCstmr}

Success Message is displayed
    Sleep                                       5
    Wait until page contains                    ${sucMsg}                       ${delay}
    Page should contain                         ${sucMsg}
    Click element                               ${btn_closeMsg}
    Sleep                                       7

Success Edit Message is displayed
    Wait until page contains                    ${sucEditMsg}                       ${delay}
    Page should contain                         ${sucEditMsg}
    Click element                               ${btn_closeEdit}
    Sleep                                       2


###Edit Campaign###
Click Edit Campaign
    Sleep                                       2
    wait until element is enabled               ${btn_editCampaign}             ${delay}
    click element                               ${btn_editCampaign}
Add Term & Condition
    Sleep                                       2
    wait until element is enabled               ${fldEdit_addTerm}              ${delay}
    input text                                  ${fldEdit_addTerm}              ${EditTermText}
    click element                               ${btn_EditTerm}
Edit New Customer Offer Name
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${newCustomerName_edit}
Edit Second Visit Offer Name
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${secVisitName_edit}
Edit Birthday Month Offer Name
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${brthdyMonthName_edit}
Edit Anniversary Offer Name
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${annivName_edit}
Edit Lost Customer Name
    wait until element is enabled               ${fld_offerName}                ${delay}
    input text                                  ${fld_offerName}                ${lostCustName_edit}

Edit Offer Type to Free Gift
    Wait Until Element is Enabled               ${drpwnEdit_offerType}          ${delay}
    Click Element                               ${drpwnEdit_offerType}
    Wait Until Element is Enabled               ${opt_freeGift}                 ${delay}
    Click Element                               ${opt_freeGift}
Edit Offer Value
    wait until element is enabled               ${fld_offerValue}               ${delay}
    input text                                  ${fld_offerValue}               ${offerValue_Edit}
Edit Minimum Spend
    wait until element is enabled               ${fld_minSpend}                 ${delay}
    input text                                  ${fld_minSpend}                 ${minSpendEdit}
Click Save Edit
    Scroll element into view                    ${btn_saveEdit}
    Sleep                                       2
    wait until element is enabled               ${btn_saveEdit}                 ${delay}
    click element                               ${btn_saveEdit}
    Sleep                                       5


