*** Settings ***
Library             DatabaseLibrary
Library             OperatingSystem


*** Variable ***
${DBName}       cvm_v2
${DBUser}       qa
${DBPass}       DWkg8yNJjZMYFwgd
${DBHost}       34.68.209.108
${DBPort}       3306
${memberId}     076811a1-dcf1-11eb-bce9-42010a715007
${phone}        +6285281114886
${camp_secVisit}    SecondVisitPromo_380739



*** Keywords ***
Delete Verified Phone
    ${del_Verified_ Phone}      execute sql string      Delete from cvm_v2.transaction_phone_codes where phone_codes_phone='${phone}';

