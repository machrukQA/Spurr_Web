




*** Test Cases ***
tes1
    Check Member id Present in Master_Member Table






*** Keywords ***
Check Member id Present in Master_Member Table
    check if exists in database     select member_id from shopick_v2.master_member where member_id='${memberId}';

Check Machruk email present in email table
    check if exists in database     select email_id from cvm_v2.transaction_email where email_to="Machruk@gospurr.com";

Check Hanum email not present in email table
    check if not exists in database     select email_id from cvm_v2.transaction_email where email_to="hanum@gospurr.com";

Delete Member Phone
    ${del_Verified_ Phone}     execute sql string      Delete from shopick_v2.master_member_devices where devices_member_id='${memberId}';
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

Delete Verified Phone

Update Database
    ${update}                   execute sql string      Update shopick_v2.master_member set member_value=0, member_stamp=0, member_spending=0 where member_id= '${memberId}';