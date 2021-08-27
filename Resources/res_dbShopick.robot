*** Settings ***
Library             DatabaseLibrary
Library             OperatingSystem


*** Variable ***
${DBName}       shopick_v2
${DBUser}       qa
${DBPass}       DWkg8yNJjZMYFwgd
${DBHost}       34.68.209.108
${DBPort}       3306
${memberId}     076811a1-dcf1-11eb-bce9-42010a715007
${camp_secVisit}    SecondVisitPromo_Auto




*** Keywords ***
Check Member id Present in Master_Member Table
    check if exists in database     select member_id from shopick_v2.master_member where member_id='${memberId}';

Check Machruk email present in email table
    check if exists in database     select email_id from cvm_v2.transaction_email where email_to="Machruk@gospurr.com";

Check Hanum email not present in email table
    check if not exists in database     select email_id from cvm_v2.transaction_email where email_to="hanum@gospurr.com";

Delete Member Phone
    ${del_Phone}                execute sql string      Delete from shopick_v2.master_member_devices where devices_member_id='${memberId}';
Delete Member Device
    ${del_Device}               execute sql string      Delete from shopick_v2.master_member_phones where member_phones_member_id= '${memberId}';
Delete Member id
    ${del_Id}                   execute sql string      Delete from shopick_v2.master_member where member_id= '${memberId}';
Delete Transaction Activities
    ${del_Transac_Act}          execute sql string      Delete from shopick_v2.transaction_activities where activities_member_id= '${memberId}';
Delete Loyalty Stamps
    ${del_Loyalty_Stmp}         execute sql string      Delete from shopick_v2.loyalty_master_member_stamps where member_stamps_member_id= '${memberId}';
    ${del_Loyalty_Master_Stmp}  execute sql string      Delete from shopick_v2.loyalty_master_stamps where stamps_member_id= '${memberId}';
Delete Customer
    ${del_Customer}             execute sql string      Delete from shopick_v2.master_customer where customer_member_id= '${memberId}';
Delete Transaction Notification
    ${del_Transac_Notif}        execute sql string      Delete from shopick_v2.transaction_notification where notification_member_id= '${memberId}';
Delete Loyalty Redeem
    ${del_Loyalty_Redeem}       execute sql string      Delete from shopick_v2.loyalty_transaction_redeem where redeem_member_id= '${memberId}';
Delete Loyalty Rewards
    ${del_Loyalty_Rewards}      execute sql string      Delete from shopick_v2.loyalty_transaction_rewards where rewards_stamps_id IN (SELECT stamps_id FROM loyalty_master_stamps WHERE stamps_member_id='${memberId}');
#Delete Loyalty
    #${del_Loyalty}              execute sql string      Delete from shopick_v2.loyalty_master_rewards where rewards_name IN (SELECT stamps_id FROM loyalty_master_stamps WHERE stamps_member_id='${memberId}');
Delete Loyalty History Stamps
    ${del_Loyalty_Hist_Stmp}    execute sql string      Delete from shopick_v2.loyalty_history_stamps where stamps_member_id= '${memberId}';
Delete Transaction Feedback
    ${del_Transac_Feedback}     execute sql string      Delete from shopick_v2.transaction_feedback where feedback_member_id= '${memberId}';
Delete Transaction Checkin
    ${del_Transac_Checkin}      execute sql string      Delete from shopick_v2.loyalty_transaction_checkin where checkin_member_id= '${memberId}';
Delete Campaign Engagement Transaction
    ${del_Campgn_Transac_Engg}  execute sql string      Delete from shopick_v2.campaign_transaction_engagement where engagement_member_id= '${memberId}';
Delete Campaign Redeem Transaction
    ${del_Transac_Checkin}      execute sql string      Delete from shopick_v2.campaign_transaction_redeem where redeem_member_id= '${memberId}';
Delete Loyalty
    ${del_loyalty}              execute sql string      Delete from shopick_v2.loyalty_master_loyalty WHERE loyalty_merchant_id='ea998a56-dcf1-11eb-bce9-42010a715007';
Delete Second Visit Campaign
    ${del_campaign}             execute sql string      Delete from shopick_v2.campaign_master_promotion where promotion_name='${camp_secVisit}';
Update Database
    ${update}                   execute sql string      Update shopick_v2.master_member set member_value=0, member_stamp=0, member_spending=0 where member_id= '${memberId}';
