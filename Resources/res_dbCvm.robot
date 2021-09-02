*** Settings ***
Library             DatabaseLibrary
Library             OperatingSystem
Resource            ../../Resources/res_Account.robot


*** Variable ***
${DBName}       cvm_v2
${DBUser}       qa
${DBPass}       DWkg8yNJjZMYFwgd
${DBHost}       34.68.209.108
${DBPort}       3306
${memberId}     eae671a8-dcf1-11eb-bce9-42010a715007


${phone}        +6285281114886
${camp_secVisit}    SecondVisitPromo_380739



*** Keywords ***
Delete Verified Phone
    ${del_Verified_Phone}           execute sql string      Delete from cvm_v2.transaction_phone_codes where phone_codes_phone='${phone}';
Delete Existing Email Code
    ${del_TranscSession}            execute sql string      Delete from cvm_v2.transaction_session where session_user_id='${memberId}';
    ${del_merchantUserByUserID}     execute sql string      Delete from cvm_v2.master_merchant_user where merchant_user_user_id IN (SELECT user_id from cvm_v2.master_user where user_email='${emailEdited}');
    #${dfgdfg}                       execute sql string      Delete from shopick_v2.campaign_transaction_engagement where engagement_promotion_id IN (SELECT promotion_id FROM shopick_v2.campaign_master_promotion WHERE promotion_name='${brthdyMonthName}');
    ${del_email_otp}                execute sql string      Delete from cvm_v2.master_user where user_email='${emailEdited}';


